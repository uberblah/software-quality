---
title: "Requirements Gathering"
date: 2023-01-04T08:12:20-08:00
draft: false
weight: 1
summary: Decide what problem we're going to solve, and what "solved" means.
---

## Overview

In this phase you will produce the requirements portion of a [Design Document]({{< ref "standards/design-template" >}}) and get that approved.

## How to Think About Requirements

1. ***FORGET*** everything you know about the current solution!
2. ***DON'T*** try to come up with a new solution!
3. ***FOCUS*** on understanding the customer, their goals and experiences!
4. ***ONCE*** you understand the customer, feel free to ask "what if X?"
    1. X should expose as little implementation detail as possible
    2. X should focus as much as possible on the user's experience: the user's actions, what they see, hear and feel

## Target State, and How to Get There

You want several stakeholders to approve a set of measurable goals.
This means you're juggling many interests at once. Your requirements must:

1. Impress a customer or Product Manager
    1. This means a non-engineer has to understand how the new experience will be better
    2. This means the requirements have to be simple
    3. This means that a mockup may be needed to fully explain the requirements
2. Seem like a small enough investment to Engineers and Managers to be worth the benefits
    1. This means you have to be thinking ahead to possible designs
    2. You need to have "ideal ways" and "shortcutted ways" in mind
    3. You need to believe that these requirements won't become irrelevant later

## Specializing the Pitch

Your pitch needs to be expressed in a way your customer will understand.
1. Engineers
    1. These people tend to want hints about the solution before you've posed a problem
    2. Try to distract them from the solution and focus them on the problem :)
2. Product Managers / Managers
    1. These people are specifically trained to help you get the right requirements
    2. Pull them into the discussion even if they aren't the customer :)
3. End Users
    1. These people don't understand (or maybe care) what it'll cost you to build this.
    2. Avoid over-promising, but see what will give them the biggest incremental boost :)

## Steps

1. Identify who the customers are
2. Identify a list of "key approvers" (individual humans, not teams)
3. Understand what the customers do, and what their day-to-day goals are
4. Narrow down and focus on the "core" problem that is causing the worst effects
5. Come up with some proposed goals which, if reached, would solve the core problem
6. Propose and get approval on:
    1. A summary of the problem the project will solve
    2. A list of concrete, measurable goals for the project to achieve
    3. A list of things the project will NOT achieve ("out of scope")

## Problem Statement

1. If the problem statement isn't concrete (based on the customer's experience), it's not done yet
2. If the problem statement describes several very different problems, you need to focus it more
3. If the problem statement is being misunderstood, it needs to be clarified

## Functional Requirements

These explain what new functionality we need to build for the customer.

1. Must say something about the experience the customer will have
2. Must be easy for the customer to understand
3. Should hint to engineers some "unit of functionality" to be built
4. If building on an existing system, specify how it will affect the user's experience of that system
5. Tempaltes:
    1. "As a {customer type}, when {activity} I can {action} in {location}, and that will result in {outcome}"
    2. "As a {customer type}, when {activity} I can see {information} in {location}"
6. This has to be the kind of thing you (and the customer) can test when you're done, to prove that it's complete.

You can mix and match the templates above. They provide some useful constraints that will guide you toward better requirements.

## Non-Functional Requirements

These explain other aspects of the system, or the new functionality, in order to keep the experience high quality, and handle the needs of the business and developers.

1. User-facing latency and availability SLAs
2. Applicable Operations, Security and Privacy requirements

## Out of Scope

These explain things you will not achieve. It is best for these to be worded similarly to Functional Requirements, but sometimes you need to just explain something your own way and that's fine.

## When Am I Done?

When you've filled in the Requirements section of [this design doc template]({{< ref "standards/design-template" >}}) and gotten it approved by your key approvers.
