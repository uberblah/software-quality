---
title: "Planning"
date: 2023-01-04T08:12:33-08:00
draft: false
weight: 3
summary: Decide who will execute the approved plan, by when.
---

## Overview

In this phase, you will take the following steps, and produce planning artifacts at multiple steps.

1. Break the design down into independent "workstreams"
2. Break down each workstream into a sequence of "milestones" with clear deliverables
3. Decide who will work on each workstream
4. Determine when each milestone will be done by
5. Identify risks to the plan, and add buffer time or resources
6. Get approval from management, and the people who will work on this

```mermaid
flowchart TD
    subgraph design[Design]
        d_approvals([Approvals])
        d_c1[Component 1]
        d_c2[Component 2]
        d_c3[Component 3]
    end

    subgraph work_inventory[Work Inventory]
        subgraph wi_workstream_a[Workstream A]
            wi_m1a[Milestone A1]
            wi_m1b[Milestone A2]
            wi_m1c[Milestone A3]
        end
        subgraph wi_workstream_b[Workstream B]
            wi_m2a[Milestone B1]
            wi_m2b[Milestone B2]
        end

        wi_m1a -.-> wi_m1b -.-> wi_m1c
        wi_m2a -.-> wi_m1b
        wi_m2a -.-> wi_m2b
    end

    subgraph resource_allocations
        milestone_assignees[Milestone Owners]
        cost_by_project[Cost by Project]
        cost_by_assignee[Cost by Owner]
    end

    subgraph roadmap
        rm_approvals([Approvals])
        subgraph workstream_A[A]
            wsa_owner[owner]
            wsa_goals[goals]
        end
        subgraph workstream_B[B]
            wsb_owner[owner]
            wsb_goals[goals]
        end
    end

    design --> work_inventory
    work_inventory --> resource_allocations
    work_inventory --> roadmap
    resource_allocations --> roadmap
```

## A Note About Tools

Your company may already have tools for project planning and management.
Use your company's tools. However, most tools don't have much rigor "built-in";
You will still perform better by sticking to the following guidance.

## Work Inventory

The engineer in charge of the project will create a work inventory doc (LINK TODO).
The work inventory establishes what work needs to be done
and how much effort each piece of work will take (measured in SWE work time).

To simplify the planning process, split the work into "workstreams" which could be independently
executed by other engineers.

Each workstream should be broken down into measurable, incremental goals ("milestones").
For each milestone, you need to describe:
1. Estimate of work to reach the milestone, assuming dependencies are already completed
2. Description of the work to reach the milestone - later will be broken into tasks
3. Any dependencies on other milestones that have to be done first

## Roadmapping

This step is a negotiation between people in multiple roles, generally driven by TPM or Manager.
Here we determine:
1. Who will own which workstreams
2. When the milestones will be due

The final deliverable is a roadmap doc (LINK TODO).
You may use a spreadsheet to check your resource allocations (LINK TODO).

## Negotiation

In order to get agreement from all stakeholders on the roadmap document,
you also need to ensure any dependencies are handled in other roadmap documents.
