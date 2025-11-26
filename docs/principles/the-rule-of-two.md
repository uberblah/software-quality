---
title: "The Rule of Two"
date: 2025-11-25T21:35:20-08:00
description: You can copy code once. When you need it a third time, you must refactor.
---

# The Rule of Two

## What is it?

When you need functionality that already exists:

1.  **First time**: Write it.
2.  **Second time**: Copy and paste it (if the abstraction isn't obvious).
3.  **Third time**: Refactor into a shared abstraction.

## Why?

Premature abstraction creates complex, wrong abstractions. It is often better to have a little duplication than a wrong abstraction.

Seeing three concrete examples usually reveals the *correct* abstraction. Two points make a line, but three points define a curve (or a pattern). Waiting for the third instance ensures you are solving a general problem, not just coincidentally similar ones.

## Corollary

If you see someone else has written it twice already and you're about to write a third, strongly consider building the abstraction, informed by the originals.
