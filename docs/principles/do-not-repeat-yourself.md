---
title: "Do Not Repeat Yourself"
date: 2025-11-25T21:35:20-08:00
description: Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.
---

# Do Not Repeat Yourself (DRY)

## What is it?

Every piece of knowledge should have a single, unambiguous, authoritative representation within a system.

## Guideline

*   **Knowledge, not just text**: This is about business logic and rules, not just identical lines of code. Two loops might look the same but represent different concepts; that is coincidental, not duplication.
*   **Single Source of Truth**: If you change a business rule, dependency or configuration, you should only have to update it in one place.
*   **Consistency**: Duplication of logic leads to inconsistency. If you have to remember to update `A` whenever you update `B`, you have a DRY violation.

**Note**: Contrast with [The Rule of Two](the-rule-of-two.md). DRY is the goal; The Rule of Two is a pragmatic heuristic to find the right abstraction to achieve DRY without over-engineering.
