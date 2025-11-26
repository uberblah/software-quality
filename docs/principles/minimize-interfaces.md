---
title: "Minimize Interfaces"
date: 2025-11-26T00:52:01-08:00
description: The best interface is the smallest one that does the job.
---

# Minimize Interfaces

## What is it?

Every public method, argument, or exported class is a commitment. It is something you have to maintain, document, and support. It is something others will rely on.

## Guideline

*   **Surface Area**: Keep the surface area of your API as small as possible. It is much easier to add a method later than to remove or change one.
*   **Hyrum's Law**: "With a sufficient number of users of an API, it does not matter what you promise in the contract: all observable behaviors of your system will be depended on by somebody."
*   **Pit of Success**: Make it hard to use incorrectly by exposing less. If a user *can't* call the wrong method because it's private, they won't.
