# CLAUDE.md

Guidance for Claude Code when working in this repository.

## What this is

A personal **Lean 4 learning** repository. It combines a Lake package (`LearningLean`) of
runnable notes/exercises with a MyST book that presents the same material as prose. Content
follows *An Introduction to Lean 4* by Enric Cosme Llópez and Lü Gong
(https://www.uv.es/coslloen/Lean4/). This is a learning sandbox, not a production library —
favor clarity and pedagogy over cleverness.

## Toolchain

- Lean/Lake pinned by `lean-toolchain` (currently `leanprover/lean4:v4.32.0`); managed by `elan`.
- Depends on Mathlib `v4.32.0` (see `lakefile.toml` / `lake-manifest.json`).
- MyST via `mystmd` (`myst` CLI). Fitch figure rendered from Typst.

## Common commands

```bash
lake exe cache get   # fetch prebuilt Mathlib (first time; avoids long compile)
lake build           # compile the LearningLean library — use this to verify Lean changes
myst start           # live-preview the book at localhost:3000
myst build --html    # build static site into _build/ (git-ignored)
typst compile fitch.typ fitch.svg  # regenerate the Fitch proof figure
```

Verify Lean edits with `lake build`. Expect `info:` lines from `#check`/`#print` commands —
those are normal output, not errors.

## Structure & conventions

- One chapter = one Lean module under `LearningLean/` + one matching Markdown file at the root:
  - `BasicSyntax.lean` ↔ `syntax.md`
  - `NaturalDeduction.lean` ↔ `natural-deduction.md`
- `LearningLean.lean` is the root module and must `import` every chapter module. When adding a
  new module under `LearningLean/`, add an `import` line there too.
- Module files use `UpperCamelCase`; keep a matching book chapter and update `myst.yml`'s `toc`.
- Proof exercises live in the `Exercises` namespace and are named `T<section><n>` (e.g. `T51`).

## Things not to do

- Don't commit `.lake/` or `_build/` — both are git-ignored build output.
- Don't hand-edit `lake-manifest.json`; let `lake` manage dependency versions.
- Don't rename `LearningLean` (the library/package name) without updating `lakefile.toml`,
  `LearningLean.lean`, and the manifest together.
