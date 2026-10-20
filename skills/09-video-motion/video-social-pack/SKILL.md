---
name: video-social-pack
description: Turn one or more raw long-form videos (mp4, optionally + mp3) into Portuguese transcripts, a written list of proposed viral-worthy 30s-3min cuts for review, and — once approved — vertical 9:16 clips burned with the Kenlo short-form caption style (bold Poppins, white + black outline, blue keyword highlight), plus a social media copy pack (title + description + hashtags) for YouTube, Instagram, TikTok and LinkedIn. Use when the user gives one or more video/audio files and asks for cuts, clips, shorts, reels, "cortes que viralizam", social pack, or "transforma esse vídeo em conteúdo para redes sociais".
---

# Video → Social Media Pack

Turns long-form video(s) into: Portuguese transcript(s), a **written proposal of candidate viral
cuts for human review**, then — once approved — vertical 9:16 clips styled with burned-in Kenlo
captions, and per-platform copy (title/description/hashtags). This skill is the orchestrator — it
does the **understanding, moment-selection and copywriting** (that needs an LLM, i.e. you). Helper
PowerShell scripts under `C:\Users\<user>\tools\whisper\` do the **mechanical** work (transcription,
video cutting, styled caption rendering) so you don't burn turns re-deriving ffmpeg incantations
each time:

- `Transcribe-Audio.ps1` — audio/video → timestamped transcript (txt + srt), 100% local (whisper.cpp).
- `New-CaptionAss.ps1` — a simple cue text file (timestamps + text, `*word*` marks the highlighted
  word) → a styled `.ass` caption file (Kenlo look: bold Poppins ExtraBold/Black, white fill, thick
  black outline, ALL CAPS, one highlighted word/phrase per line in Kenlo blue `#2A8CE4`, no background
  box, positioned lower-third). Fonts live in `tools\whisper\fonts\`.
- `Cut-Clip.ps1` — video + start/end timestamp (+ `-AssFile` styled captions, or plain `-SrtFile`) →
  a rendered mp4 clip, reformatted to vertical 9:16 (blurred background + centered original).
- `viral-clip-selection-prompt.md` — the reusable rubric (see step 4) for picking which 30s-3min
  segments of a transcript are worth cutting. Don't re-derive this each time; read it and apply it.

Both mechanical scripts self-install their dependencies (ffmpeg, whisper.cpp, model) on first run
if missing.

**Vertical only.** The user has been explicit: clips for this skill are **always 9:16 vertical**,
never horizontal — always pass `-Vertical` to `Cut-Clip.ps1`. If a horizontal cut is separately
useful for YouTube/LinkedIn-native posting, that's an *extra* render, never a substitute for the
vertical one.

## Inputs needed

- The **source video(s)** (mp4) — the skill handles one video or a batch of several in one request.
  Audio-only (mp3) is enough for transcript + social copy, but **cannot** produce real video clips —
  say so explicitly if only an mp3 is given and ask whether they have the mp4, rather than silently
  skipping the clips step.
- Optionally, the audio may already be extracted as mp3 (faster to hand to the transcriber); if not,
  `Transcribe-Audio.ps1` reads the mp4 directly (ffmpeg extracts the audio track itself).
- A video that's already short (≲3min) and already vertical is probably a **style reference**, not
  source material — check duration/resolution (`ffprobe`) before assuming it's something to cut down;
  ask if it's unclear rather than guessing.

## Workflow

For a batch of several source videos, run steps 1-4 per video (transcribe → understand → propose
cuts) before rendering anything — the human reviews the whole batch's proposed cuts together, then
you render across all approved cuts in one go.

1. **Transcribe** (mechanical — run the script, don't reimplement it):
   ```powershell
   & "$env:USERPROFILE\tools\whisper\Transcribe-Audio.ps1" -InputAudio "<path>" -Model small.en -Language en -Formats txt,srt
   ```
   Adjust `-Model`/`-Language` to the actual source language (use a non-`.en` model + `-Language auto`
   for non-English or unknown-language audio). This step is slow (minutes to over an hour depending on
   length and machine load) — run it with `run_in_background: true` and poll, exactly like a normal
   long shell command; do not block the conversation waiting synchronously.

2. **Translate to Portuguese** (your job, not a script's):
   - If the source is already Portuguese, skip.
   - Otherwise translate the `.srt` block-by-block, **preserving every index number and timestamp
     exactly** (only the text changes) — this is what the clip-cutting step's burned captions need.
     Save as `<name>_pt-br.srt`.
   - Also produce a flowing paragraph-form Portuguese transcript (`.md`) for readability/reference —
     this reads better than concatenated subtitle fragments.

3. **Understand the content.** Read the full transcript and identify: the core argument/narrative,
   the strongest concrete claims (numbers, case studies, quotable lines), and the overall structure.
   This grounds moment-selection — don't pick clips on vibes alone.

4. **Propose cuts — text only, for human review before anything is rendered.** Apply
   `viral-clip-selection-prompt.md` (read it, don't re-derive the rubric from memory) to the
   transcript and write out the candidate list in the format it specifies: timestamp, why it works,
   hook quote, payoff, suggested platform. Use **exact timestamps from the ORIGINAL-language srt**
   (translating text doesn't change timing). Present this list to the user and **wait for approval
   or edits before cutting anything** — that's the point of this being a separate step. Nudge
   start/end a second or two off the raw srt boundaries to land on natural pauses rather than cutting
   mid-word.

5. **Once approved, prepare the styled captions per clip.** For each approved cut, write a cue file
   (plain text, one line per phrase: `hh:mm:ss.mmm | hh:mm:ss.mmm | TEXTO COM *PALAVRA* EM DESTAQUE`,
   timestamps **relative to the clip itself** starting at 0 — not the source video's timeline) and
   render it to `.ass`:
   ```powershell
   & "$env:USERPROFILE\tools\whisper\New-CaptionAss.ps1" -CuesFile "<clip>_cues.txt" -OutFile "<clip>_captions.ass"
   ```
   **Keep each cue SHORT** — about 2-5 words, under ~30 characters, one line at the render font size.
   A cue spanning 8-12s with a full sentence wraps into 4-5 lines and covers most of the frame (learned
   the hard way on the first real test). Spread short phrase-length cues across the clip's whole span
   instead of one cue per sentence. Mark **one** word or short phrase per cue with `*asterisks*` — that's
   what gets the Kenlo-blue highlight; skip it on lines with nothing worth emphasizing.

6. **Cut the clips** (mechanical — one call per clip):
   ```powershell
   & "$env:USERPROFILE\tools\whisper\Cut-Clip.ps1" -InputVideo "<mp4>" -Start "00:07:17.360" -End "00:08:23.840" `
       -OutFile "<outdir>\clipes\clip1_vertical.mp4" -Vertical -AssFile "<clip>_captions.ass"
   ```
   Always `-Vertical` (see note above — never render horizontal-only). Run these in background;
   a handful of clips can take a while on a slow machine — don't block waiting on all of them serially
   if they can run one after another unattended. **Spot-check at least one clip** before declaring the
   batch done: extract a frame (`ffmpeg -ss <t> -update 1 -frames:v 1 out.png`) and look at it — confirm
   the caption fits on ≤2 lines, the highlight color/word is right, and nothing is cut off.

7. **Write the social media pack** (your job — this is real copywriting, not a template fill).
   For the **full video** and for **each clip**, write, in Portuguese:
   - **YouTube**: título (≤100 chars, front-loaded keyword), descrição (2-3 parágrafos + timestamps
     dos capítulos para o vídeo completo), hashtags (3-5).
   - **Instagram**: legenda (hook na primeira linha, corpo curto, CTA), hashtags (8-15, mix de
     nicho + amplas).
   - **TikTok**: legenda curta e direta (hook, sem enrolação), hashtags (3-6, focadas em
     descoberta/trending do nicho).
   - **LinkedIn**: legenda com tom mais analítico/profissional (contexto + insight + pergunta pro
     engajamento), sem hashtags em excesso (2-4).

   Ground every claim/number you put in the copy in what the transcript actually says — don't invent
   stats or dress up a mediocre clip as more than it is.

8. **Deliver** an organized output folder (create it under the same directory as the source video,
   named `<video-name>_pacote/`):
   ```
   <video-name>_pacote/
     transcricao_pt-br.md
     transcricao_pt-br.srt
     cortes_propostos.md          <- the step-4 proposal, kept for the record
     clipes/
       clip1_vertical.mp4
       clip1_cues.txt
       clip1_captions.ass
       clip2_vertical.mp4
       ...
     pacote_redes_sociais.md
   ```
   Send the key files to the user (`SendUserFile`) rather than only describing them — a folder full
   of finished clips and copy is the actual deliverable, not a description of one.

## Notes / honesty

- Transcription and cutting are exact/mechanical; content understanding, moment selection and copy
  are judgment calls — say so, and flag any clip you're unsure lands well rather than presenting all
  five with equal confidence.
- If the machine is under heavy load (e.g. browser eating CPU), transcription can take much longer
  than the audio's own duration — this has happened before on this machine (a ~10min clip took
  40min-2h depending on load). Don't assume a stall; check `Get-Process` CPU-time deltas over a few
  seconds before deciding something is stuck (a single snapshot comparison across a long poll
  interval can look misleadingly slow — sample twice a few seconds apart to see instantaneous usage).
- This skill does not call any external AI/translation API — translation and copywriting are done by
  you, in-session. Nothing leaves the machine except normal conversation with the user.
- **Caption style provenance:** the Kenlo look (font, colors, positioning) baked into
  `New-CaptionAss.ps1`'s defaults was reverse-engineered from 3 reference videos the user shared
  (2026-09-02) by sampling pixel colors and eyeballing font/position — not from an official brand
  kit. **User-approved as the default (2026-09-02)** after reviewing a rendered test clip — no need
  to re-confirm the look on future runs. There's no logo badge (the small "K" icon top-right in the
  references) burned in yet — the user is sending a proper transparent PNG of the mark; once
  received, add a `-LogoFile` option to `Cut-Clip.ps1` (overlay top-right corner) rather than
  cropping one out of a compressed reference frame.
