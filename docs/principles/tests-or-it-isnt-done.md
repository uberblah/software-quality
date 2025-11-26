---
title: "Tests Or It Isn't Done"
date: 2025-11-25T21:35:20-08:00
description: A feature is not complete until you can prove it works and ensure it keeps working.
---

# Tests Or It Isn't Done

## What is it?

A feature is not "complete" when the code is written. It is complete when you can prove it works and ensure it keeps working.

## Guideline

*   **Liability vs Asset**: Untested code is a liability. It is a place where bugs can hide and regressions can occur unnoticed. Tested code is an asset.
*   **Design Feedback**: If you can't test it easily, you probably designed it wrong. (See [Isolate Complexity](isolate-complexity.md)).
*   **Proof**: "Works on my machine" is not a standard of quality. Automated tests are the documentation that never lies.
*   **Definition of Done**: No PR should be merged without tests covering the new functionality or bug fix.
