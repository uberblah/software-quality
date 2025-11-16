---
title: "Design Template"
date: 2023-01-04T21:04:48-08:00
description: A design doc template you can fill in to easily create a comprehensive design.
---

!!! danger

    # Instructions

    1. Replace italicized items like *{your name here}*
    2. Follow instructions in any big red banners like this one
    3. Review the document yourself to verify you've followed instructions
    4. Delete all of the red banners and any leftover notes

----

# [Design] *{Project Name Here}*

- Author(s): *{Author1, Author2}*
- Status: *{Draft/Approved}*

!!! danger

    Pick the people who need to approve this design. You could reasonably include:

    1. Experts on the systems involved
    2. People who are planning to work on this
    3. Senior engineers
    4. Key points of contact from teams who will also work on this
    5. Product managers (tech or not), to approve on behalf of customers

    Reviewers are allowed to ask for more reviewers - that's why this table is here.

| Key Approver  | Representing        | Status               | Notes                |
| ------------  | ------------------- | -------------------- | -------------------- |
| *{approver1}* | *{team/org/system}* | *{Pending/Approved}* | *{comments go here}* |
| *{approver2}* | *{team/org/system}* | *{Pending/Approved}* | *{comments go here}* |
| *{approver3}* | *{team/org/system}* | *{Pending/Approved}* | *{comments go here}* |

## Requirements

!!! danger

    This section sets the "definition of done". See [Requirements Gathering Phase](../project-lifecycle/requirements-gathering.md).

    It is reasonable to ensure the requirements are reviewed by some of your stakeholders
    BEFORE you write the design. This helps make sure you're designing for the right problem.

    You could even split this into its own separate doc, and just reference
    the requirements doc when you write the design portion.

### Problem Statement

!!! danger

    Write a plain-language paragraph or two to explains:

    1. Who the customer is
    2. What they do and what problem they have
    3. A vision for what "solved" looks like

    The customer could be your business' end-customer, another business,
    a set of internal teams or even your own team.
    You can address multiple customers if needed.

### Functional Requirements

!!! danger

    Write a numbered list of "requirements".
    These are concrete, measurable goals you can easily see if you've reached or not.
    These have to be done for the project to be considered done.

    Functional requirements focus on "functionality we will provide". Examples:

    1. The customer can click on the "hello" button to receive a "hello" email
    2. All filed customer complaints will be stored permanently
    3. I can send an emoji with a format like `:happyface:`

    The breadth or focus of ALL requirements depends on the breadth or focus of the project.

    If the whole goal of the project is to improve non-functional aspects of the system,
    those can be listed here and you can remove the non-functional requirements section.

### Non-Functional Requirements

!!! danger

    Write a numbered bulleted list of "requirements".
    These are concrete, measurable goals you can easily see if you've reached or not.
    These have to be done for the project to be considered done.

    Non-functional requirements focus on "how we will provide our functionality". Examples:

    1. The "create" operation will meet a latency SLA of 5ms @ P95
    2. The "create" operation will handle 90 QPS without performance degradation
    3. No engineer effort should be required for a customer to file a complaint
    4. This project will meet all operations, security and privacy standards of our org

    The breadth or focus of ALL requirements depends on the breadth or focus of the project.

### Out of Scope

!!! danger

    Write a numbered bulleted list of "NON-requirements".
    These are things this project will NOT achieve.
    You write these down to prevent people from asking "wait, this doesn't solve X?"

## Proposal

!!! danger

    This section specifies at a high level our solution to the problem. See [Design Phase](../project-lifecycle/design.md).

    Avoid getting into fine details until later.

### Overview

!!! danger

    Provide a diagram that shows the components of your system,
    as well as any neighboring systems it interacts with.

    Color scheme should be used to show:

    1. Which components need changes
    2. Which components are new
    3. Which components will be deprecated
    4. Which components will be unaffected ("out of scope")

### Components

!!! danger

    For each component, describe:

    1. Summary of its purpose, how it works and how it interacts with other components
    2. Its API -- inputs, outputs, side-effects
    3. High level logic behind the API

    You want a digestible amount of detail here. Don't go too deep.

    In some cases you will want a "sub-design" for some of these components.
    If so, you should mention that when you describe the component.

#### *{Component 1}*

#### *{Component 2}*

#### *{Component 3}*

## Alternatives

!!! danger

    Explain what alternative approaches you considered.

    If there were multiple choices on a certain component,
    you could make one section explaining those choices,
    and the tradeoffs that led you to your decision.

    This is where you really show your work, and the thought
    process you followed.

### *{Why Not X?}*

### *{Why Not Y?}*

## Detailed Notes

!!! danger

    This section makes an inventory of applicable standards,
    and explains how we will meet all of them with the proposed design.

    Note that there might be finer details here that were not covered
    in the proposal section.

    I often hold off on writing all of the detailed notes until I'm
    confident in my proposal -- otherwise you'll have to revise these
    when one of your alternatives is found to be preferred.

### Release Process

!!! danger

    How will you release the new functionality.

    An upcoming standard will provide guidance on this.

### Operations

!!! danger

    How will you:

    1. Debug issues and trace requests
    2. Prevent and mitigate system failures or other incidents
    3. Test the system continuously to catch issues early
    4. Protect the system from breaking when new code is released
    5. Minimize the cost of maintaining the system

    An upcoming standard will provide guidance on this.

### Security

!!! danger

    How will you prevent the system from being abused or exploited?

    If the system is built for security or privacy enforcement,
    the high-level of this should be covered in Proposal,
    and you can focus on finer details here.

### Privacy

!!! danger

    How will you protect customer data, and ensure that it is handled in accordance with:

    1. Their expectations
    2. Applicable regulations, in the locations where the system operates

    An upcoming standard will provide guidance on this.

### *{Component 1 Deep-Dive}*

!!! danger

    Not all components need a full deep-dive, but it can be helpful
    in case you don't want to create a whole new design doc just for
    that component / there isn't quite enough ambiguity for that.
