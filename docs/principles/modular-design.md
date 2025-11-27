---
title: "Modular Design"
date: 2025-11-26T19:31:36-08:00
description: The most important tool for managing software complexity is the module.
---

# Modular Design

## What is it?

The most important tool for managing software complexity is the **module**: a container of code (class, function, service) with a visible interface and a hidden implementation.

**The Goal**: Create "Deep Modules". A deep module has a simple, purpose-focused interface. It hides exactly enough logic to solve one whole problem.

## Guidelines

### 1. Information Hiding (Clean Abstractions)
The implementation should be a secret. If changing the implementation requires changing the interface or the consumer, you have failed to hide the information.
*   **Vocabulary**: Good abstractions create a vocabulary that describes the *problem domain* (what you are doing), not the *solution domain* (how the computer does it).
*   **Leaky Abstractions**: If you need to know how it works internally to use it correctly, it is a failed abstraction.

### 2. Minimize Interfaces
The best interface is the smallest one that does the job. Every exposed method is a commitment and a dependency hook.
*   **Surface Area**: Keep the surface area of your API as small as possible.
*   **Pit of Success**: Make it hard to use incorrectly by exposing less.

### 3. Loose Coupling
Modules should interact through narrow, stable interfaces. They should know as little as possible about each other.
*   **Agility**: Loose coupling is the primary enabler of agility. It allows you to change one part of the system without breaking everything else.
*   **Signs of Tight Coupling**: Shared databases, synchronous call chains, accessing internal fields.

### 4. Isolate Complexity
If a problem is inherently complex (e.g., tax calculations, cryptography), quarantine it inside a deep module. The rest of the system should interact with the simple interface, not the messy details.

### 5. Dependency Injection & Plugins
Use Dependency Injection to inject information about different environments or subjects that the module must operate on. The module itself focuses on solving one problem. But often, solving the same problem "everywhere" requires plugins to understand and handle each context.

It is important to note that injected dependencies must **also** be modules. And it is fair to say that a particularly complex problem may require plugins with plugins with plugins.

See also [Clean Plugin Architecture](../design-patterns/plugin-architecture.md) pattern for a detailed guide on this approach.
