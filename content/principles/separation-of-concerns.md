---
title: "Separation of Concerns"
date: 2023-01-07T09:41:55-08:00
draft: false
summary: The key to everything
weight: 1
---

## This Principle is Special

Separation of Concerns is the most important principle to follow when solving complex problems. All other design principles I follow are just re-wordings or specific examples of separating concerns, which is why I list this principle first.

## What is it?

Each component of your solution should solve a single logical sub-problem. A given sub-problem may also be divided, and sub-components created to allocate sub-problems.

## Why?

1. Makes it easy to figure out where you need to make a new change or debug an issue
2. Makes it easy to generalize your solution to new but similar problems, by reusing pars of your design (see also "The Rule of Two")
3. Minimizes the number of changes you need to make in the future (see also "Do Not Repeat Yourself")
4. Makes it easy for different teams to own each component (see also "Ownership", "Focus" and "Minimizing Interfaces")
5. Helps to isolate complexity so that it doesn't leak everywhere (see also "Managing Complexity" and "Clean Abstractions")
6. Makes it easy to determine whether a dependency is unavoidable (see also "Minimizing Dependencies")
7. Helps you figure out which pieces are needed right away vs later (see also "Design Incrementally")

## Examples

WIP