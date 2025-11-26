---
title: "Isolate Tests"
date: 2025-11-26T02:52:11-08:00
description: Tests should not depend on each other or the environment.
---

# Isolate Tests

## What is it?

A test suite where tests fail randomly (flakiness) creates operational burden rather than stability. And, it compromises trust in the testing process. This can lead to cultural decay among maintainers. The primary cause of flakiness is tests interfering with each other or depending on shared state.

## Don'ts

*   **Manual Setup**: Avoid manually setting up test data or environment. This will lead to flakiness, and make onboarding more difficult over time.
*   **Shared State**: Avoid shared mutable state between test cases.
    * If your test case absolutely requires environment variables, run it in a separate process.
    * If it requires globally-pathed test files, run it in a separate container.
    * If it requires external databases or services, run it with a mock, local, or (globally mutexed)test instance.
*   **Production Access**: Under no circumstances should a non-E2E test require access to production data or services.
*   **Special Permissions**: Assume the people running the test will be freshly onboarded members of your team. Make sure onboarding includes any permissions needed for testing.

## Dos

*   **Dependency Injection**: Use dependency injection to insert test dependencies into your production business logic, in order to test it. The more E2E you can make this, the better.
*   **Test-Owned Assets**: You can easily demonstrate isolation if the test creates and destroys all of the state it needs. This is the cleanest way to ensure isolation.
*   **Baked Dev Dependencies**: If the test requires special dev tools, bake them into the setup script or build/dev tooling for your project.
