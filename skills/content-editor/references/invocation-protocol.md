---
type: protocol
status: active
created: 2026-04-06
updated: 2026-04-06
---

# Invocation Protocol For Content Editor

## Purpose

Define how the base editorial skill and channel overlays are combined.

## Layer Model

### Layer 1. Base Skill

Always start with:

- `SKILL.md`

This layer is responsible for:

- Kirill's core voice
- diagnostic and editorial quality
- anti-AI editing pass
- platform adaptation

### Layer 2. Channel Overlay

Apply only when the output belongs to a specific channel or content contour.

Current overlay:

- `channel-profile-prostopromarketing.md`

This layer is responsible for:

- channel intent
- topic filtering
- format filtering
- anti-drift rules
- final channel-specific quality check

## Invocation Rules

### Case 1. General expert writing

Use only the base skill when the task is:

- website copy
- landing page text
- bio
- intro
- external article
- general thought-leadership content

### Case 2. Telegram post for `Простопромаркетинг`

Use both layers in order:

1. `SKILL.md`
2. `CHANNEL_PROFILE_Простопромаркетинг.md`

Required final check:

- the post must satisfy both the base editorial standard and the channel standard

### Case 3. Editing an existing `Простопромаркетинг` draft

Run in this order:

1. remove weak phrasing, abstraction, AI residue, and duplicated ideas via base skill
2. check whether the post fits the channel axis
3. tighten opening, mechanism, and ending using the channel overlay
4. if the result becomes too clipped, restore a more natural spoken rhythm without losing the mechanism
5. merge over-chopped lines back into natural Telegram paragraphs where needed

### Case 4. Content planning for `Простопромаркетинг`

Use both layers.

The base skill shapes the voice and quality bar.
The overlay decides:

- whether the topic belongs in the channel
- which format is best
- whether the angle is native or derivative

## Default Prompting Shortcut

If the user asks for:

- a post for `Простопромаркетинг`
- a series for `Простопромаркетинг`
- an edit of a `Простопромаркетинг` draft
- a content plan for the channel

Then silently activate both layers.

Do not ask the user whether the overlay should be applied.

## Quality Threshold

The output is acceptable only if:

- it sounds like Kirill
- it sounds like this specific channel
- it reveals a mechanism
- it avoids generic marketing-content behavior
- it still feels alive after editing, rather than over-structured
- its paragraphing feels written, not mechanically segmented

If one of these is missing, the draft is not ready.
