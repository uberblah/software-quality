---
title: "Isolate Complexity"
date: 2025-11-26T00:52:01-08:00
description: You often cannot eliminate essential complexity, but you can quarantine it.
---

# Isolate Complexity

## What is it?

Some parts of a system are inherently complex (e.g., tax calculations, cryptographic protocols, distributed consensus). You often cannot eliminate this *essential complexity*, but you can prevent it from bleeding into the rest of the application.

## Guideline

*   **Quarantine**: Encapsulate the complex logic inside a "black box" with a simple, well-defined interface.
*   **Simple Consumers**: The rest of the system should interact with the simple abstraction, not the messy details. See also [Minimize Interfaces](minimize-interfaces.md) and [Clean Abstractions](clean-abstractions.md).
*   **Blast Radius**: If you can't simplify the logic, at least contain the blast radius. If the complex part breaks or needs to change, it shouldn't require changes in unrelated parts of the system.