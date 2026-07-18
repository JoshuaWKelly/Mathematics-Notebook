---
title: Foundations
---

# Foundations

This section maps the skills and background knowledge that build on one another while
learning Lean 4 [@demoura2021lean4] and the mathematics it is used to formalize. It is a
roadmap rather than a chapter of exercises: the two tracks — *mathematics* and *Lean 4* —
develop in parallel and meet where proofs get formalized against Mathlib [@mathlib2020].

## Knowledge graph

The graph below shows prerequisite relationships (an arrow `A --> B` reads "A supports B").
Read it bottom-up from the two entry points — propositional logic on the mathematics side and
basic syntax on the Lean side — toward formalized mathematics, where the tracks converge.

```{mermaid}
:label: fig-knowledge-graph
flowchart TD
    classDef math fill:#eaf2fb,stroke:#3b6ea5,color:#12314f;
    classDef lean fill:#f3eafb,stroke:#7a4fa5,color:#2e1247;
    classDef goal fill:#eafbef,stroke:#3fa563,color:#123f24;

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

**Convergence.** Both tracks meet at Mathlib, Lean's community library, where formalizing real
mathematics requires fluency in the mathematical structure *and* in the Lean idioms that encode
it. That convergence — formalized mathematics — is the goal the rest of this book works toward.
