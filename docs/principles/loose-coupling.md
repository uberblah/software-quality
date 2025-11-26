---
title: "Loose Coupling"
date: 2025-11-26T06:07:29-08:00
description: Loose coupling is the primary enabler of agility.
---

# Loose Coupling

## What is it?

Coupling is the degree to which one component depends on the internal details of another. **Loose coupling** means components know as little as possible about each other. They interact through stable, narrow interfaces and make few assumptions about how the other side works.

This is the most important factor for software agility. If you want to move fast, you must be able to change one part of the system without breaking (or rewriting) everything else.

## Identifying Coupling

### Signs of Tight Coupling (Bad)
*   **Shared Database**: Service A reads Service B's tables directly. If B changes its schema, A breaks.
*   **Synchronous Chains**: Service A calls B, which calls C, which calls D. If D is slow, A is slow. If D is down, A is down.
*   **Internal Knowledge**: Component A constructs Component B's internal objects or accesses its private fields.
*   **Circular Dependencies**: A depends on B, and B depends on A. They must be deployed together.
*   **Lockstep Deployment**: You cannot deploy Service A without also deploying Service B.
*   **Rigid Data Formats**: Data is exchanged as raw bytes, or in language-specific formats (e.g., Java objects, Python objects), where adding fields or changing languages is a breaking change.

### Signs of Loose Coupling (Good)
*   **Stable Interfaces**: Components interact via defined APIs (REST, gRPC, public methods) that don't expose internal implementation.
*   **Asynchronous Events**: Service A publishes an event ("OrderCreated"), and Service B reacts to it. A doesn't know B exists.
*   **Independent Deployability**: You can deploy a new version of Service A while Service B is running the old version, and nothing breaks.
*   **Platform Agnostic**: Data is exchanged in standard formats (JSON, Protobuf), not language-specific serialization.

## Guidelines

*   **Minimize Surface Area**: The less you expose, the less others can couple to. See [Minimize Interfaces](minimize-interfaces.md).
*   **Tell, Don't Ask**: Don't ask an object for its data and then act on it. Tell the object what to do.
*   **Law of Demeter**: A component should only talk to its immediate friends. Don't reach through an object to get to another (`a.getB().getC().doSomething()` is bad).
*   **Integration Patterns**: Prefer messaging and events over direct synchronous calls for cross-service communication, unless you have a good reason not to.
*   **Contract Testing**: Define the contract between components explicitly. Use automatically-run unit tests to verify and protect the contract.
*   **Evolvable Formats**: Use language-agnostic formats for data exchange and persistence, that allow code & data to evolve independently. Examples include JSON (if carefully managed, with JSON Schema), Protobuf and Thrift.
