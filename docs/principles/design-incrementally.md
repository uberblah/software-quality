---
title: "Design Incrementally"
date: 2025-11-26T00:52:01-08:00
description: Complex systems that work invariably evolved from simple systems that worked.
---

# Design Incrementally

## What is it?

Big Design Up Front (BDUF) almost always fails because you cannot foresee all the problems you will encounter. Instead, design must happen in stages, evolving as you gain more information.

This is one of the most critical principles in software engineering, alongside [Solving the Right Problem](solve-the-right-problem.md) and [Separating Concerns](separation-of-concerns.md).

## Guidelines

### 1. Design for Problems Within Reach

You don't know everything yet. Design for the problem you are having *now*.

*   **Look Ahead**: Glance at the problems that are coming next, but **do not solve them** until you have more information.
*   **Keep Options Open**: Ensure your current design doesn't accidentally block reasonable solutions for those future problems.
*   **YAGNI**: Don't complicate your design for hypothetical requirements.

### 2. Break Down the Design

For a system that requires multiple components, do not try to design every detail of every component at once.

*   **Breadth First**: Design the overall solution first to ensure the pieces fit together.
*   **Depth Second**: Do detailed design on the parts only when necessary.
*   **Structure**: This ensures you are breaking down the problem effectively from the start (see [Separate Concerns](separation-of-concerns.md)).

### 3. Design for Incremental Implementation

Your design should be a "North Star"—a vision of the final state—but it must be buildable in layers.

*   **Walking Skeleton**: The first layer should fully solve a narrow version of the problem (end-to-end). This creates the hard skeleton to support future improvements.
*   **Iterate**: Higher layers and extensions can generalize the solution to tackle the wider problem space.
*   **Gall's Law**: "A complex system that works is invariably found to have evolved from a simple system that worked. A complex system designed from scratch never works and cannot be patched to make it work."
