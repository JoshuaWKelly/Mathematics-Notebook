/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

/* Math Macros */
#let R = $RR$

= Accessibility

== Accessibility \& universal design <accessibility-universal-design>

This book is written with *universal design* in mind: the goal is a single body of content that works for the widest possible range of readers, without anyone needing a separate "accessible version." Accessibility here is not an afterthought bolted onto the finished text — it shapes how the source is authored and how it is published.

=== Principles <principles>

- *Equitable use.* The same content is offered in many formats so readers can choose the one that fits their tools, bandwidth, and reading style — screen reader, e-reader, print, or plain text.
- *Perceivability.* Figures carry text alternatives, mathematics is written as real markup (not images), and color is never the only way meaning is conveyed. The Fitch derivation is rendered as SVG with descriptive context in the surrounding prose.
- *Structure over styling.* Headings, lists, and tables use semantic markup so assistive technology can navigate the document. Every chapter has a clear heading hierarchy.
- *Readable mathematics.* Formulas are authored in LaTeX-style markup and rendered as MathML/accessible math in HTML, so screen readers and braille displays can interpret them rather than treating equations as opaque pictures.
- *Runnable, not locked away.* Lean source is linked to the live editor so proofs can be explored interactively, and the same code is available as plain text for offline reading.
- *Tolerance and flexibility.* Low-bandwidth and offline readers are served by the plain `.txt` and Markdown versions\; print readers by the PDF\; e-reader users by EPUB.

=== Available formats <available-formats>

The same content is published in several formats. Choose whichever suits your reading tools:

#tablex(columns: 3, header-rows: 1, repeat-header: true, ..tableStyle, ..columnStyle,
[
Format
],
[
Best for
],
[
Status
],
[
*HTML*
],
[
Reading online with accessible, navigable math
],
[
Available
],
[
*PDF*
],
[
Print and fixed-layout reading (built via LaTeX/Tectonic)
],
[
Available
],
[
*Typst*
],
[
Alternate PDF engine with a custom title page + TOC
],
[
Available
],
[
*DOCX*
],
[
Editing, annotation, and Office/assistive-tool workflows
],
[
Available
],
[
#strong[Markdown (`.md`)]
],
[
Plain, portable source that reads well in any editor
],
[
Available
],
[
#strong[Plain text (`.txt`)]
],
[
Maximum-compatibility, low-bandwidth, distraction-free reading
],
[
Planned
],
[
*EPUB3*
],
[
Reflowable reading on e-readers, with adjustable font size
],
[
Planned
],
[
*AI Audio*
],
[
Listening / audiobook-style narration
],
[
Planned
],
)
#noteBlock[
*Planned formats.* Plain-text, EPUB3, and an AI-narrated audio edition are on the roadmap so the book can be read at any bandwidth, on e-readers, and listened to as well as read — supporting readers who prefer or rely on those modes.
]

=== Feedback <feedback>

Accessibility is never "done." If any part of this book is difficult to read with your tools — a missing figure description, math that doesn't render for your screen reader, or a format you need that isn't listed — please #link("https://github.com/JoshuaWKelly/Mathematics-Notebook/issues")[open an issue] so it can be fixed.