---
title: Foundations
content_includes_title: false
parts: {}
authors:
  - nameParsed:
      literal: Joshua W. Kelly
      given: Joshua W.
      family: Kelly
    name: Joshua W. Kelly
    orcid: 0009-0004-7363-4837
    email: jkelly@verusinstitute.org
    affiliations:
      - Verus Institute
      - Arizona State University
    id: contributors-myst-generated-uid-0
    corresponding: true
license:
  content: CC-BY-4.0
  code: MIT
affiliations:
  - id: Verus Institute
    name: Verus Institute
  - id: Arizona State University
    name: Arizona State University
math:
  \R:
    macro: \Rightarrow
---
+++
This section maps the skills and background knowledge that build on one another while
learning Lean 4 {cite:p}`demoura2021lean4` and the mathematics it is used to formalize. It is a
roadmap rather than a chapter of exercises: the two tracks — *mathematics* and *Lean 4* —
develop in parallel and meet where proofs get formalized against Mathlib {cite:p}`mathlib2020`.

## Knowledge graph

The graph below shows prerequisite relationships (an arrow `A --> B` reads “A supports B”).
Read it bottom-up from the two entry points — propositional logic on the mathematics side and
basic syntax on the Lean side — toward formalized mathematics, where the tracks converge.

```{mermaid}
flowchart TD
    classDef math fill:#2b6cb0,stroke:#c7d9ec,stroke-width:1px,color:#ffffff;
    classDef lean fill:#805ad5,stroke:#ddccf2,stroke-width:1px,color:#ffffff;
    classDef goal fill:#2f855a,stroke:#c6ecd4,stroke-width:1px,color:#ffffff;

    subgraph MATH [Mathematics]
        direction TB
        L[Propositional & predicate logic]
        P[Proof techniques]
        S[Sets, functions & relations]
        A[Abstract algebra]
        LA[Linear algebra]
        AN[Analysis]
    end

    subgraph LEAN [Lean 4]
        direction TB
        SY[Basic syntax & terms]
        TY[Types & universes]
        PT[Propositions as types]
        TA[Tactics]
        ND[Natural deduction]
        ML[Working with Mathlib]
    end

    %% mathematics progression
    L --> P
    S --> P
    P --> A
    A --> LA
    A --> AN

    %% lean progression
    SY --> TY
    TY --> PT
    PT --> TA
    TA --> ND

    %% cross-track dependencies
    L --> PT
    P --> ND
    ND --> ML
    LA --> ML
    AN --> ML

    %% convergence
    ML --> FV[Formalized mathematics]

    class L,P,S,A,LA,AN math;
    class SY,TY,PT,TA,ND,ML lean;
    class FV goal;
```

## How to read the two tracks

**Mathematics.** Propositional and predicate logic together with basic proof techniques
(direct proof, contradiction, induction) are the bedrock. Set-theoretic language — functions,
relations, and cardinality — makes those proofs precise. From there, abstract algebra provides
the structures (groups, rings, fields) that linear algebra and analysis specialize.

**Lean 4.** The language side starts with syntax and the term/type distinction, then the
*propositions-as-types* correspondence, which is where logic on the mathematics side connects:
a proof of `P` is a term of type `P`. Tactics automate the construction of those terms, and
natural deduction is the first substantial place both tracks are exercised together.

**Convergence.** Both tracks meet at Mathlib, Lean’s community library, where formalizing real
mathematics requires fluency in the mathematical structure *and* in the Lean idioms that encode
it. That convergence — formalized mathematics — is the goal the rest of this book works toward.