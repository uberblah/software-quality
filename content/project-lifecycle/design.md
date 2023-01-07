---
title: "Design"
date: 2023-01-04T08:12:27-08:00
draft: false
weight: 2
summary: Decide how we will meet all of the requirements.
---

In this phase you will produce a [Design Document]({{< ref "standards/design-template" >}}), and get that approved. At a high level what you need to do is:

## What Does A Design Doc Do?

1. Reference the requirements you are trying to meet
2. Lay out the logical "components" and describe how they will work together
3. Specify the inner function of each component
    1. You can delegate this to sub-designs with more technically-focused requirements
4. Specify what technical decisions were made and why
5. Address cross-cutting concerns (operations, security, extensibility)
6. Provide a breakdown of the needed work, with estimates of how much engineer time each step will take
    1. Get all the way down to individual tasks, even if it means making sub-designs
7. Get approval from all people and teams who will probably be involved in the work

## How to think through a design

1. Figure out what the fundamental shape of the problem is
    1. Create ["action/information" flow diagrams]
    2. Group sets of actions in the flow diagram that can serve as distinct components
    3. Each component should be uniquely identified by a clear, independent responsibility (see "Separation of Concerns")
    4. Try many different breakdowns
2. Get into how each component will be implemented
    1. What would each component look like? A service? A DB? A library? A webpage?
    2. Think about applicable [System Archetypes]
    3. Think about whether anyone else in your company is solving each subproblem
3. Dive into the details
    1. What does the data flowing between the components look like?
    2. What is the specific interface of each component (inputs, outputs)
    3. What happens when something goes wrong in a component?
    4. What is the exact sequence of interactions that will happen?

If your problem is very large, you may have multiple "sub-breakdown" stages before you get to hard details -- in those cases it may be appropriate to have one "High-Level Design" doc as well as "Component Design" docs.

## When Am I Done?

When you've filled in [this whole design doc template]({{< ref "standards/design-template" >}}) and gotten it approved by your key approvers.

NOTE: You can get informal approval in 3 phases as you build the document:
1. Requirements, to make sure you're solving the right problem
2. Proposal, to make sure your overall approach makes sense
3. Details, to make sure you're getting all the details right and it's ready for planning