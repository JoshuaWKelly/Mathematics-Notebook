# lean-test — Learning Lean 4

A personal sandbox for learning [Lean 4](https://leanprover.github.io/), the interactive
theorem prover and functional programming language. It contains two things:

1. **A Lake package** (`LearningLean`) with runnable notes and exercises, built against
   [Mathlib](https://github.com/leanprover-community/mathlib4).
2. **A [MyST](https://mystmd.org/) book** ("Learning Lean 4") that presents the same material
   as readable, cross-linked chapters.

Material follows *An Introduction to Lean 4 — An Introduction to Formal Verification* by
Enric Cosme Llópez and Lü Gong ([course page](https://www.uv.es/coslloen/Lean4/)).

## Layout

```
.
├── lakefile.toml            # Lake package config (requires Mathlib v4.32.0)
├── lean-toolchain           # Pins Lean to leanprover/lean4:v4.32.0
├── lake-manifest.json       # Resolved dependency versions
├── LearningLean.lean        # Root module — imports every chapter
├── LearningLean/
│   ├── Basic.lean           # Starter stub
│   ├── BasicSyntax.lean     # #check / #print / def / lambdas
│   └── NaturalDeduction.lean# Propositional proofs (Exercises namespace)
│
├── myst.yml                 # MyST book config + table of contents
├── index.md                 # Book landing page
├── syntax.md                # Chapter: basic syntax
├── natural-deduction.md     # Chapter: natural deduction (embeds fitch.svg)
├── fitch.typ                # Typst source for the Fitch-style proof figure
└── fitch.svg                # Rendered figure embedded in the book
```

Build artifacts (`.lake/`, `_build/`) are git-ignored.

## Prerequisites

- **Lean / Lake** via [`elan`](https://github.com/leanprover/elan). The toolchain version is
  pinned in `lean-toolchain`, so `elan` fetches it automatically.
- **[`mystmd`](https://mystmd.org/guide/quickstart)** to build the book: `npm install -g mystmd`
  (or `brew install myst`).
- **[Typst](https://typst.app/)** (optional) only if you want to regenerate `fitch.svg`.

## Build & check the Lean code

```bash
lake exe cache get   # download prebuilt Mathlib (first time only; avoids a long compile)
lake build           # compile the LearningLean library
```

Open any file under `LearningLean/` in an editor with the Lean 4 extension (VS Code) to see
`#check`/`#print` output and proof goals inline.

## Run the MyST book

Live-preview with hot reload (serves at <http://localhost:3000>):

```bash
myst start
```

Build the static HTML site into `_build/html/`:

```bash
myst build --html
```

Export the book as a PDF. Two export targets are configured in `myst.yml`, so you can produce
either (or both) — output lands in `_build/exports/`:

```bash
myst build --typst   # Typst route -> _build/exports/learning-lean-4-typst.pdf
myst build --pdf     # LaTeX route -> _build/exports/learning-lean-4-latex.pdf
myst build --all     # both, plus the HTML site
```

Both routes work, with two things to know:

- **Math uses Unicode logic symbols** (`¬`, `⊢`) rather than `\neg` / `\vdash`. MyST's
  LaTeX→Typst converter doesn't map those commands, so they're written as Unicode, which every
  renderer (KaTeX, LaTeX, Typst) accepts.
- **The Typst route** needs only the `typst` CLI and embeds `fitch.svg` natively.
- **The LaTeX route** uses [`tectonic`](https://tectonic-typesetting.github.io/) (auto-downloaded
  by MyST) and additionally needs [`imagemagick`](https://imagemagick.org/) so MyST can convert
  `fitch.svg` → PDF for `\includegraphics` (`brew install imagemagick`). Without it, the LaTeX
  build fails with "Cannot determine size of graphic."

## Regenerate the Fitch figure

`fitch.svg` is rendered from `fitch.typ`:

```bash
typst compile fitch.typ fitch.svg
```

## Continuous integration

`.github/workflows/` builds the Lean project and generates docs on push, and includes
Mathlib update / release-tag workflows from the standard Lean project template.
