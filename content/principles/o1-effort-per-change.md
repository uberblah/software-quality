---
title: "O(1) Effort per Change"
date: 2023-01-12T22:15:55-08:00
draft: false
summary: As the number of already-supported functionalities increases, your cost to make changes should grow as little as possible.
weight: 3
---

# O(1) Effort per Change

## Context

Without careful planning, adding new functionality to your system can increase the cost of future changes. If you create patterns where one logical change means O(N) code changes because of N users of the same logic -- you are setting yourself up for a painful time.

## What is it?

As the number of already-supported functionalities increases, your cost to make changes should grow as little as possible.

## How to Use?

As you're designing a system or even a class structure, ask yourself -- when I want to add more supported cases, how will that affect the number of literal changes I need in order to make future logical changes? Where do changes need to happen when I add new support? Do those places grow with O(N), or O(1)?

## Related

1. Issues with effort per change can arise from failure to [[Separate Concerns]({{< ref "principles/separation-of-concerns" >}})]
