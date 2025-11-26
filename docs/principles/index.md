---
title: "Principles"
date: 2023-01-07T09:42:10-08:00
---

# Software Principles

Each page below describes one principle you can use to guide your software engineering work.

## Higher Judgment & Direction

- [Solve the Right Problem](solve-the-right-problem.md) - Understand your customer and their needs. Define the right goals BEFORE you start designing.
- [What Ownership Is](what-ownership-is.md) - Ownership is about outcomes, not just output.
- [If It's Not Written, It's Not Happening](if-its-not-written-its-not-happening.md) - Ephemeral communication is not a record. Write it down.
- [The Problem with Deprecation](the-problem-with-deprecation.md) - Killing things is harder than birthing them.

## Designing Solutions

- [Separate Concerns](separation-of-concerns.md) - No component should solve multiple sub-problems, and no sub-problem should be solved by multiple components.
- [Design Incrementally](design-incrementally.md) - Complex systems that work invariably evolved from simple systems that worked.
- [The Automation Spectrum](the-automation-spectrum.md) - Automation is a ladder, not a switch.
- [Leaf vs Root Problems](leaf-vs-root-problems.md) - Distinguish between symptoms and causes. Fix the root to prevent the leaves.
- [O(1) Effort per Change](o1-effort-per-change.md) - As the number of already-supported functionalities increases, your cost to make changes should grow as little as possible.
- [If They Can, They Will](if-they-can-they-will.md) - If the system permits an action, assume it will happen.
- [Boring is Good](boring-is-good.md) - Choose boring technology for critical infrastructure.
- [Do Not Repeat Yourself](do-not-repeat-yourself.md) - Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.
- [Minimize Interfaces](minimize-interfaces.md) - The best interface is the smallest one that does the job.
- [Clean Abstractions](clean-abstractions.md) - Abstractions should simplify the mental model, not just hide code.
- [Isolate Complexity](isolate-complexity.md) - You often cannot eliminate essential complexity, but you can quarantine it.
- [Expect Change](expect-change.md) - Software is soft; it is meant to change. Design for malleability.
- [Minimize Dependencies](minimize-dependencies.md) - Dependencies are liabilities, not free functionality.

## Code Quality

- [The Rule of Two](the-rule-of-two.md) - You can copy code once. When you need it a third time, you must refactor.
- [Tests Or It Isn't Done](tests-or-it-isnt-done.md) - A feature is not complete until you can prove it works and ensure it keeps working.
- [Isolate Tests](isolate-tests.md) - Tests should not depend on each other or the environment.
