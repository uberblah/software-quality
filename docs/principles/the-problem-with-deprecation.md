---
title: "The Problem with Deprecation"
date: 2025-11-26T01:11:39-08:00
description: Killing things is harder than birthing them.
---

# The Problem with Deprecation

## What is it?

Deprecation usually fails. By extension, centralization usually fails. It is much easier to build something new than to kill something old. If you are considering deprecation, strongly consider gradual evolution instead. If you must deprecate, do so incrementally.

## Why?

Software is a storehouse of knowledge. Old software has more accumulated knowledge, and fewer people who understand it. When you replace it, you need to recreate that knowledge in the replacement. If there are a large number or weight of use cases then the replacement must be **better** than the original.

So, by declaring a deprecation, you are betting that the replacement will be better, not just for the users you know, but for the users you don't know. If it is not, then you have wasted time and resources.

## Guideline

*   **Incremental Replacement**: Don't try to replace the whole system at once. Deprecate and replace small, isolated pieces at a time.
*   **Transparent Migration**: The best migration is one the user doesn't have to do. Aim for transparent switchovers. If that's not possible, the ease of the migration path is the true measure of your replacement's quality.
*   **Stop the Bleed**: Make it hard or impossible for *new* use cases to adopt the deprecated system. Use documentation, but prefer code enforcement (linters, compiler warnings, or access controls).
*   **Assess the Scope**: Deeply understand the usage patterns of the unit you are deprecating. If you can't identify all the use cases, you are targeting too large a unit. Focus on a smaller part.
*   **Measure and Pivot**: Track the rate of migration. If it stalls or isn't going well, cut your losses early and change the plan.
