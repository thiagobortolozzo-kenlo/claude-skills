---
name: kenlo-social-triage
description: Pick, from Kenlo's social media comments, DMs and mentions, ONLY the customers complaining about product/feature problems, slow support or no support at all, and validate each case with Kenlo Brain (who the customer is, open tickets, known issue). Use after kenlo-social-scan, or when someone pastes social messages and asks "quem precisa de suporte aqui?".
---

# Kenlo social triage

Input: the `items` of today's `~/.claude/kenlo-social-listener/itens-YYYY-MM-DD.json` whose `id` is **not** in `~/.claude/kenlo-social-listener/seen-listener.json`. (Migration: if `seen.json` exists there and `seen-listener.json` does not, rename it.) Output: the few items that must go to the Customer & Marketing space, each validated with Kenlo Brain.

## What gets forwarded — only these three

| Category | Meaning | Examples |
|---|---|---|
| `suporte_produto` | A problem with a Kenlo product or feature: error, bug, "não funciona", can't log in, lost access, integration/portal not syncing, app down, data missing | "o CRM não carrega os leads", "integração com o Facebook parou", "perdi o acesso ao app" |
| `prazo_atendimento` | Complaint that support is taking too long to solve something | "há 11 dias tentando resolver", "abri chamado semana passada e nada" |
| `falta_atendimento` | Complaint that nobody answers / support channels don't work | "ninguém me responde", "o WhatsApp do suporte não funciona", "preciso falar com um atendente" |

## What does NOT get forwarded

- Reactions to the content of a post or ad ("Ofensivo", "que post ruim", jokes, debates about the topic). The author is reacting to marketing, not asking for support.
- Praise, thanks, emojis, tags of friends, spam, bots, giveaways.
- Prospects asking for price/demo (`lead`) — list them in the summary for Sales, don't forward.
- Billing/cancellation without a product or support complaint — list in the summary, don't forward.
- Threads where Kenlo already replied AND the customer didn't come back with a new complaint.

If it is not clearly one of the three categories, do **not** forward; put it in the summary under "ficou de fora" with one line saying why.

## Priority

- **P1 – urgente:** can't work at all (system/app down, no access), many days waiting, threatens to cancel, mentions Procon/Reclame Aqui/lawyer, public complaint with traction.
- **P2 – hoje:** clear product problem or slow-support complaint, one customer.
- **P3 – pode esperar:** a "how do I…" that might be a misunderstanding of the feature.

## Validate with Kenlo Brain (required for every forwarded case)

Kenlo Brain is the knowledge base and validator; it does not send anything. For each case:

1. **Who is the customer.** Look for an SL code, company name, site or CNPJ in the profile/messages, then call `suporte_cliente` (SL, name or license) and, if you have a domain/CNPJ, `ficha_da_imobiliaria`. Record SL, city, products and CSM. If nothing matches: "não identificado como cliente" — never guess.
2. **Is it already being handled.** With the SL, call `suporte_chamados`: are there open tickets, how old, which queue. "Chamado aberto há 9 dias na fila N2" is exactly what the team needs.
3. **Is it a known issue.** Call `consultar_conversa_das_salas` (termo = product/feature, horas = 72) to see if the team already discussed an incident; optionally `search_support_docs` (with `produto`) to see if it's a documented how-to.
4. **Already posted?** If the same customer was already posted in the Customer & Marketing space in the last 48h (the forward skill reads the space), mark `duplicate: true` and don't forward again.

## Output

Each forwarded item gets:

```json
{
  "category": "prazo_atendimento",
  "priority": "P1",
  "forward": true,
  "reason": "diz que está há 11 dias tentando resolver e que os canais de suporte não funcionam",
  "validation": {
    "customer": "Imobiliária Exemplo — SL 00000, Cidade/UF, CSM: <nome> | ou 'não identificado como cliente'",
    "tickets": "2 chamados abertos, o mais antigo há 11 dias (N2) | ou 'nenhum chamado aberto'",
    "known_issue": "time comentou instabilidade na integração X ontem | ou 'nada encontrado'"
  },
  "duplicate": false
}
```

Privacy (LGPD): if a message contains phone, CPF, e-mail or address, mask it as `[telefone]`, `[cpf]`, `[email]`, `[endereço]` everywhere you write it.

## Reserve and remember (always, at the end)

1. In today's items file, set `"reserved_by": "listener"` on every item you classified as `suporte_produto`, `prazo_atendimento` or `falta_atendimento` — including duplicates and items not forwarded for being already posted. This tells `kenlo-social-responder` not to touch them. Also set `reserved_by: "listener"` on every item of today's file whose id is in `~/.claude/kenlo-social-listener/reserved-listener.json`, and append newly reserved ids to that file (create it as `[]` if missing; plain array, no duplicates).
2. Append the ids of **all** items you evaluated (forwarded or not) to `~/.claude/kenlo-social-listener/seen-listener.json` (plain JSON array of ids; create it as `[]` if missing; no duplicates).
3. Write the file back as valid JSON; never remove or reorder items.
