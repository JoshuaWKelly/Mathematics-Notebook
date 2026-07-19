/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

/* Math Macros */
#let R = $RR$

= Foundations

This section maps the skills and background knowledge that build on one another while learning Lean 4 #cite(<demoura2021lean4>) and the mathematics it is used to formalize. It is a roadmap rather than a chapter of exercises: the two tracks — _mathematics_ and _Lean 4_ — develop in parallel and meet where proofs get formalized against Mathlib #cite(<mathlib2020>).

== Knowledge graph <knowledge-graph>

The graph below shows prerequisite relationships (an arrow `A --> B` reads "A supports B"). Read it bottom-up from the two entry points — propositional logic on the mathematics side and basic syntax on the Lean side — toward formalized mathematics, where the tracks converge.

== How to read the two tracks <how-to-read-the-two-tracks>

*Mathematics.* Propositional and predicate logic together with basic proof techniques (direct proof, contradiction, induction) are the bedrock. Set-theoretic language — functions, relations, and cardinality — makes those proofs precise. From there, abstract algebra provides the structures (groups, rings, fields) that linear algebra and analysis specialize.

*Lean 4.* The language side starts with syntax and the term/type distinction, then the _propositions-as-types_ correspondence, which is where logic on the mathematics side connects: a proof of `P` is a term of type `P`. Tactics automate the construction of those terms, and natural deduction is the first substantial place both tracks are exercised together.

*Convergence.* Both tracks meet at Mathlib, Lean's community library, where formalizing real mathematics requires fluency in the mathematical structure _and_ in the Lean idioms that encode it. That convergence — formalized mathematics — is the goal the rest of this book works toward.