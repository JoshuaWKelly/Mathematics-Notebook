// Standalone Fitch proof figure — rendered to SVG for embedding in MyST.
#set page(width: auto, height: auto, margin: 6pt, fill: none)
#set text(font: "Luciole", size: 13pt)
#show math.equation: set text(font: "Luciole Math")

#let line-no(n) = align(right, [#n])
#let just(s) = text(size: 11pt)[#s]
#let sub(body, hyp: false) = grid.cell(
  inset: (left: 0.9em, right: 0.4em, top: 5pt, bottom: 5pt),
  stroke: (left: 0.7pt) + if hyp { (bottom: 0.7pt) },
  body,
)
#let top(body) = grid.cell(inset: (right: 0.4em, top: 5pt, bottom: 5pt), body)

#grid(
  columns: (1.6em, auto, auto),
  column-gutter: 1.2em,
  align: (right + horizon, left + horizon, left + horizon),
  inset: (y: 5pt),

  line-no(1), top($P arrow.r.double Q$),        just[],
  line-no(2), top($not Q$),                     just[],
  line-no(3), sub($P$, hyp: true),              just[H],
  line-no(4), sub($Q$),                         just[E$arrow.r.double$ 1,3],
  line-no(5), sub($not Q$),                     just[IT 2],
  line-no(6), top($not P$),                     just[I$not$ 3,4,5],
)
