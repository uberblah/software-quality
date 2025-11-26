---
title: "Expect Change"
date: 2025-11-25T21:35:20-08:00
description: Software is soft; it is meant to change. Design for malleability.
---

# Expect Change

## What is it?

Software is soft; it is meant to change. Requirements will change, scale will change, and technologies will change.

## Guideline

*   **Avoid "Final" designs**: There is no such thing. Design for the current requirements plus a reasonable margin of flexibility.
*   **Optimize for replaceability**: It's often better to write code that is easy to delete and replace than code that is infinitely reusable.
*   **Loose Coupling**: Ensure changes in one area don't ripple through the system.
*   **Assumption Check**: If you assume something will "never" change, you are probably wrong. Build in seams where changes are most likely to occur.
