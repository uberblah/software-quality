---
title: "Clean Abstractions"
date: 2025-11-26T00:52:01-08:00
description: Abstractions should simplify the mental model, not just hide code.
---

# Clean Abstractions

## What is it?

An abstraction is "clean" when it allows the user to solve their problem without understanding the implementation details. It reduces the cognitive load required to use a component. By extension, this reduces the cognitive load required to create new components elsewhere.

## Guideline

*   **Leaky Abstractions**: If you need to know how it works internally to use it correctly (e.g., "don't call this method in a loop because it does a network call"), it is a failed, leaky abstraction.
*   **Vocabulary**: Good abstractions create a vocabulary that describes the *problem domain* (what you are doing), not the *solution domain* (how the computer does it).
*   **Hiding vs. Simplifying**: Don't just hide code behind a function call. Simplify the concept.
