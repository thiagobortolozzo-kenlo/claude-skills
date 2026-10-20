---
name: kenlo-social-forward
description: Turn validated social media support cases into short Google Chat messages for the "Customer & Marketing" space, show them to Thiago for approval in the session, and post only the approved ones from Thiago's own Google account via Claude in Chrome. Use after kenlo-social-triage, or when Thiago answers "aprovo 1, 3" about pending social cases.
---

# Kenlo social forward

Two phases. **Never post to the space without an explicit approval from Thiago in this conversation.** Kenlo Brain is not used to send anything here — only Thiago's account, through Chrome.

## Browser (mandatory — Thiago's rule, 2026-10-14)

Operate **only** in the Chrome named **"Chrome Kenlo"** (Thiago's own account). Never in "Chrome Mickael", the SEO account, or any other browser.

Chrome tools are deferred: load them first with one ToolSearch call (`select:mcp__claude-in-chrome__list_connected_browsers,mcp__claude-in-chrome__select_browser,...` plus the tools you need).

1. Find "Chrome Kenlo" before the first Chrome action. `list_connected_browsers` only shows generic names, so: if `~/.claude/kenlo-social-listener/chrome-kenlo.json` has a `deviceId`, call `select_browser` with it first; otherwise call `select_browser` on each connected `deviceId` in turn. A result naming any other browser during this step only means "try the next one" — do nothing else with that browser. When a result says `Selected browser "Chrome Kenlo"`, save `{"deviceId": "<id>"}` to `chrome-kenlo.json`.
2. If no connected browser is "Chrome Kenlo", STOP all Chrome work for this run and report "Chrome Kenlo não está conectado".
3. After "Chrome Kenlo" is selected, if any tool result names "Chrome Mickael" (or any browser other than "Chrome Kenlo"), stop immediately — do not read, click, type or close anything there — and report it.
4. Never use `switch_browser` (it broadcasts a connection request that someone could accept in the wrong Chrome).

## Phase 1 — Draft and ask for approval

1. Take only items with `forward: true` and `duplicate: false`, sorted P1 → P3.
2. Before drafting, open the space in Chrome (see Phase 2, step 1) and read the last 48h of messages: drop any customer already posted there.
3. Write one draft per case in the team's own tone — short, plain, one paragraph, ending with a direct ask. Model (fictitious example in the tone the team uses):

   > Oi, time! Chegou um pedido urgente pelo Instagram da Kenlo: a Imobiliária Exemplo (SL 00000, Cidade/UF) diz que está há 11 dias tentando resolver um problema e que os canais de suporte não estão funcionando. Ela pede contato de um atendente. Alguém consegue assumir?

   Add in the same paragraph, only when Kenlo Brain found it: CSM name, open ticket age/queue, known incident. Then a second line with the link to the conversation/comment. Never paste personal data (mask phone, CPF, e-mail, address).
4. Save the batch to `~/.claude/kenlo-social-listener/pendentes-YYYY-MM-DD.json` (number 1..N, text, validation, status `pendente`).
5. Show the numbered drafts in the session and ask: "Responda `aprovo 1, 3`, `aprovo todos`, `descarta 2` ou edite o texto."
6. Also send the drafts (tests included) to Thiago's second account: in Chrome, open Google Chat → "Mensagens diretas" → **"Thiago Boldrin"** (Thiago's other e-mail) and post one message with "Rascunhos do Kenlo Social Listener — DD/MM", the numbered drafts, and "Aprove na execução de hoje no Claude: `aprovo 1`". Use Shift+Enter for line breaks; verify it appeared. Never send drafts to anyone else, and never via Kenlo Brain.
7. If nothing qualifies, say so in one line with how many items were read per network, plus the "ficou de fora" list. Post nothing.

## Phase 2 — Post the approved drafts (Thiago's account, via Chrome)

1. Open the space: `https://chat.google.com/app/chat/AAQAL6Xrbzs` — name shown is **"Customer & Marketing"**. Confirm the header shows that name before typing; if it doesn't (or Chrome shows a login page), STOP and tell Thiago.
2. For each approved draft, one at a time:
   - click the composer ("Envie uma mensagem para Customer & Marketing"), type the text (use Shift+Enter for the line break before the link), press Enter to send;
   - post as a **new message**, not as a reply in a thread;
   - verify: read the page and confirm the message appears at the bottom with the time "agora"/current time. If it's not there, don't retype blindly — take a screenshot and report.
3. Never edit or delete other people's messages, never react, never touch other spaces.
4. Mark each draft `postado` (with the time) or `descartado` in the pendentes file and report: posted N, discarded M, failed K (with the reason).
