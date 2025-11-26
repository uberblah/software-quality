---
title: "Minimize Dependencies"
date: 2025-11-26T00:52:01-08:00
description: Dependencies are liabilities, not free functionality.
---

# Minimize Dependencies

## What is it?

Every external library, framework, or service you depend on introduces risk. It brings in code you didn't write, bugs you can't fix, and security vulnerabilities you don't know about.

## Guideline

*   **Cost-Benefit**: Only take on a dependency if the value it provides significantly outweighs the cost of maintaining it.
*   **Coupling**: Dependencies couple your release cycle and stability to theirs. If they break backward compatibility, you break.
*   **Own Your Core**: Do not outsource your core business logic to a third-party library. Use libraries for utilities (logging, HTTP clients), not for the heart of your application.
