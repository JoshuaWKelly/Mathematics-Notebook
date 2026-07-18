---
title: Basic Syntax
---

# Basic syntax

The runnable version of this chapter lives in
[`LearningLean/BasicSyntax.lean`](LearningLean/BasicSyntax.lean).

## Comments

```lean
-- This is a single-line comment.

/-
This is a multi-line comment.
Here is another line.
-/
```

## Inspecting terms and types with `#check`

`#check` asks Lean for the type of an expression without evaluating it.

```lean
#check true          -- Bool
#check 42            -- Nat
#check "Hello, World!" -- String
#check Type          -- Type 1
#check Nat           -- Type
#check ['h', 'e', 'l', 'l', 'o'] -- List Char
```

## Printing definitions with `#print`

`#print` shows how something is defined.

```lean
#print Bool
```

`Type` itself cannot be printed with `#print`, because it is a type rather than a
definition.

## Definitions and functions

```lean
def pi : Float := 3.1415926

#check pi

-- An anonymous function (lambda) taking two natural numbers.
#check λ (a b : Nat) => a + b
```
