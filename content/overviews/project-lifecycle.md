---
title: "Project Lifecycle"
date: 2023-01-03T07:14:59-08:00
draft: false
---

# Lifecycle of a Software Project

Each section below describes one phase of a software project.

## Requirements Gathering

Decide what problem we're going to solve, and what "solved" means.

<details>
<summary>See all steps</summary>

1. Identify who the customers are
2. Understand what they do, and what they need
3. Understand how they will use the system and what they expect
4. Identify a list of "key approvers" (individual humans, not teams)
5. Propose and get approval on:
    1. A summary of the problem the project will solve
    2. A list of concrete, measurable goals for the project to achieve
    3. A list of things the project will NOT achieve ("out of scope")

</details>

## Technical Design

Decide how we will meet all of the requirements.

<details>
<summary>See all steps</summary>

1. Reference the requirements you are trying to meet
2. Lay out the logical "components" and describe how they will work together
3. Specify the inner function of each component
    1. You can delegate this to sub-designs with more technically-focused requirements
4. Specify what technical decisions were made and why
5. Address cross-cutting concerns (operations, security, extensibility)
6. Provide a breakdown of the needed work, with estimates of how much engineer time each step will take
    1. Get all the way down to individual tasks, even if it means making sub-designs
7. Get approval from all people and teams who will probably be involved in the work

</details>

## Planning

Decide who will execute the approved plan, by when.

<details>
<summary>See all steps</summary>

1. Break the plan down into independent "workstreams"
2. Decide who will work on each workstream
3. Break down each workstream into a sequence of "milestones" with clear deliverables
4. Determine when each milestone will be done by
5. Identify risks to the plan, and add buffer time or resources
6. Get approval from management, and the people who will work on this

</details>

## Implementation

Develop the proposed software.

<details>
<summary>See all steps</summary>

1. Write code
2. Ensure sufficient testing and documentation as you go
3. Ensure all code and documentation is reviewed
4. Check your progress against requirements periodically
    1. You should demo the product to key approvers periodically
5. Adjust the roadmap or design as needed
6. Decide you are ready to release the new system!

</details>

## Release

Ensure the system is ready for release and meets all applicable standards.

<details>
<summary>See all steps</summary>

1. Get Customer Approval
2. Complete Operations, Security and Privacy Checklists
    1. To the extent possible, these should be automated
    2. Not all checklist items are always relevant
3. Define a release plan
    1. How will we execute the release?
    2. What could go wrong?
    3. What will we do about it?
4. Get approval on the artifacts above
5. Execute the release plan

</details>

## Operation

Operate, fix and improve the system.

<details>
<summary>See all steps</summary>

1. Monitor the system, manage an on-call rotation
2. Mitigate incidents, if applicable
3. Address customer feedback
4. Fix bugs
5. Plan improvements (these also follow the same lifecycle)
6. Determine if the system needs to be deprecated (usually as part of a new project)

</details>

## Deprecation

Decommission or replace the system when it becomes obsolete.

<details>
<summary>See all steps</summary>

1. Identify and measure impact of all affected customer use cases
2. Identify any actions needed to migrate customers to a new system
3. Make an inventory of all the components that need to be decommissioned
4. Perform any needed migrations
5. Shut down the system

</details>
