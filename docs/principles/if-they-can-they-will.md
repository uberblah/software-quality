---
title: "If They Can, They Will"
date: 2025-11-26T01:11:39-08:00
description: If the system permits an action, assume it will happen.
---

# If They Can, They Will

## What is it?

If you can imagine someone wanting to do something with your system, eventually they will try it. If it works, they will grow a dependency on it.

If your system has >2k software engineers as customers, just assume this happens within a few months of achieving broad adoption.

## Threat Models

There are two main threat models to consider, depending on your system:

1. **Security**: The user is an adversary. They are actively trying to break or abuse your system. Even a small number of users can cause a lot of damage. Consider this model if your system controls flow of resources (money, sensitive or useful data, etc.)
2. **Non-Security**: The user is just trying to do their job. They will break and abuse your system unintentionally, given enough users & time, and little enough protections against it.

## Guideline

*   **Defensive Design**: Don't rely on documentation, "gentlemen's agreements", or "internal use only" labels to prevent bad behavior. Enforce constraints with code.
*   **Measure Adoption as Risk**: Measure your adoption. A widely adopted or heavily used feature must be maintained with greater care. Risk multiplies with the complexity of the feature's interface.
*   **Validate Inputs**: Never trust input from the client. Validate it, sanitize it, and reject it if it doesn't meet your expectations.
*   **All Bugs Become Features**: This is a behavioral corollary to Hyrum's Law. Users will depend on every observable behavior, including the "bugs" you let them access.
