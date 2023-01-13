---
title: "Separation of Concerns"
date: 2023-01-07T09:41:55-08:00
draft: false
summary: No component should solve multiple sub-problems, and no sub-problem should be solved by multiple components.
weight: 2
---

## This Principle is Special

Separation of Concerns is the most important principle to follow when solving complex problems. Almost all other design principles I follow are just re-wordings or specific examples of separating concerns, which is why I list this principle near the top.

## What is it?

No component should solve multiple sub-problems, and no sub-problem should be solved by multiple components.

## It's Not Easy

Given that this is the most important principle, it is also the hardest to follow absolutely. But the more clearly you can break down the problem, and assign components to solve them, the more sustainable and effective your solution will be in the long-term.

## Why is it Important?

1. Makes it easy to figure out where you need to make a new change or debug an issue (see also "O(1) Human Effort")
2. Makes it easy to generalize your solution to new but similar problems, by reusing parts of your design (see also "The Rule of Two")
3. Minimizes the number of changes you need to make in the future (see also "Do Not Repeat Yourself")
4. Makes it easy for different teams to own each component (see also "Ownership", "Focus" and "Minimizing Interfaces")
5. Helps to isolate complexity so that it doesn't leak everywhere (see also "Managing Complexity" and "Clean Abstractions")
6. Makes it easy to determine whether a dependency is unavoidable (see also "Minimizing Dependencies")
7. Helps you figure out which pieces are needed right away vs later (see also "Design Incrementally")
