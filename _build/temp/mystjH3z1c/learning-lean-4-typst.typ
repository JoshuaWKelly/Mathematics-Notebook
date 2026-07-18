// Created with jtex v.1.0.21
// Custom MyST Typst template — a simple book layout:
//   1. a title page, 2. a table of contents, 3. the chapters.
// MyST substitutes the doc/parts placeholders below from myst.yml frontmatter,
// then injects the rendered chapters where CONTENT appears at the bottom.

#let book(
  title: none,
  subtitle: none,
  authors: (),
  date: none,
  abstract: none,
  heading-numbering: "1.1",
  body,
) = {
  set document(title: title, author: authors)
  set text(font: "New Computer Modern", size: 11pt, lang: "en")
  set par(justify: true, leading: 0.62em)

  // ---- Title page (no page number) ----
  set page(paper: "us-letter", margin: (x: 1.4in, y: 1.4in), numbering: none)
  v(4fr)
  align(center, {
    text(size: 30pt, weight: "bold", title)
    if subtitle != none {
      v(0.6em)
      text(size: 16pt, subtitle)
    }
    v(1.6em)
    if authors.len() > 0 {
      text(size: 13pt, authors.join(", "))
    }
    if date != none {
      v(0.5em)
      text(size: 11pt, date)
    }
  })
  v(1fr)
  if abstract != none {
    align(center, block(width: 78%, {
      align(center, text(weight: "bold", "Abstract"))
      v(0.5em)
      abstract
    }))
  }
  v(3fr)

  // ---- Table of contents ----
  pagebreak()
  outline(title: [Contents], depth: 3, indent: auto)

  // ---- Chapters ----
  // Number headings and start each top-level chapter on a fresh page.
  set heading(numbering: heading-numbering)
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    set text(size: 20pt, weight: "bold")
    block(above: 1.4em, below: 0.9em, it)
  }
  set page(numbering: "1")
  counter(page).update(1)
  body
}

#show: book.with(
  title: "Learning Lean 4",
  authors: ("Joshua W. Kelly",),
  date: "2026-7-17",
  abstract: [
Working notes and exercises from learning the Lean 4 theorem prover, following _An Introduction to Lean 4_ by Cosme Llópez and Gong. Covers basic syntax and natural-deduction proofs, paired with a runnable Lean library.
  ],
)

#import "myst-imports.typ": *

/* Math Macros */
#let R = $RR$

/* Written by MyST v1.10.1 */

#include "learning-lean-4-typst-syntax.typ"

#pagebreak()

#include "learning-lean-4-typst-natural-deduction.typ"

#pagebreak()

#include "learning-lean-4-typst-linear-algebra.typ"


