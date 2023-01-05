---
title: "Design Template"
date: 2023-01-04T21:04:48-08:00
draft: false
summary: A design doc template you can fill in to easily create a comprehensive design.
---

{{< hint danger >}}

# Instructions

1. Replace italicized items like *{your name here}*
2. Follow instructions in any big red banners like this one
3. Review the document yourself to verify you've followed instructions
4. Delete all of the red banners and any leftover notes

{{< /hint >}}

----

# [Design] *{Project Name Here}*

- Author: *{Author1, Author2}*
- Status: *{Draft/Approved}*

{{< hint danger >}}

Pick the people who need to approve this design. You could reasonably include:
1. Experts on the systems that need to be changed
2. People who are planning to work on this
3. Senior engineers
4. Key points of contact from teams who will also work on this
5. Product managers (tech or not), to approve on behalf of customers

Reviewers are allowed to ask for more reviewers - that's why this table is here.

{{< /hint >}}

| Key Approver  | Representing | Status               | Notes                |
| ------------  | ------------ | -------------------- | -------------------- |
| *{approver1}* | *{team/org}* | *{Pending/Approved}* | *{comments go here}* |
| *{approver2}* | *{team/org}* | *{Pending/Approved}* | *{comments go here}* |
| *{approver3}* | *{team/org}* | *{Pending/Approved}* | *{comments go here}* |

## Requirements

{{< hint danger >}}
This section sets the "definition of done". No content is needed under this header.

It is reasonable to ensure the requirements are reviewed by some of your stakeholders
BEFORE you write the design. This helps make sure you're designing for the right problem.

You could go so far as to split this into its own separate doc, and just reference
the requirements doc when you write the design portion.
{{< /hint >}}

### Problem Statement

{{< hint danger >}}
Write a plain-language paragraph or two to explains:
1. Who the customer is
2. What they do and what problem they have
3. A vision for what "solved" looks like

The customer could be your business' end-customer, another business,
a set of internal teams or even your own team.
You can address multiple customers if needed.
{{< /hint >}}

### Functional Requirements

{{< hint danger >}}
Write a numbered bulleted list of "requirements".
These are concrete, measurable goals you can easily see if you've reached or not.
These have to be done for the project to be considered done.

Functional requirements focus on "functionality we will provide". Examples:
1. The customer can click on the "hello" button to receive a "hello" email
2. All filed customer complaints will be stored permanently
3. I can send an emoji with a format like `:happyface:`

The breadth or focus of ALL requirements depends on the breadth or focus of the project.

If the whole goal of the project is to improve non-functional requirements,
those can be listed here and you can remove the non-functional requirements section.
{{< /hint >}}

### Non-Functional Requirements

{{< hint danger >}}
Write a numbered bulleted list of "requirements".
These are concrete, measurable goals you can easily see if you've reached or not.
These have to be done for the project to be considered done.

Non-functional requirements focus on "how we will provide our functionality". Examples:
1. The "create" operation will meet a latency SLA of 5ms @ P95
2. The "create" operation will handle 90 QPS without performance degradation
3. No engineer effort should be required for a customer to file a complaint
4. This project will meet all operations, security and privacy standards of our org

The breadth or focus of ALL requirements depends on the breadth or focus of the project.
{{< /hint >}}

### Out of Scope

{{< hint danger >}}
Write a numbered bulleted list of "NON-requirements".
These are things this project will NOT achieve.
You write these down to prevent people from asking "wait, this doesn't solve X?"
{{< /hint >}}

## Proposal

{{< hint danger >}}
This section specifies at a high level our solution to the problem.

Avoid getting into fine details until later.
{{< /hint >}}

### Overview

{{< hint danger >}}
Provide a diagram that shows the components of your system,
as well as any neighboring systems it interacts with.

Color scheme should be used to show:
1. Which components need changes
2. Which components are new
3. Which components will be deprecated
4. Which components will be unaffected ("out of scope")
{{< /hint >}}

### Components

{{< hint danger >}}
For each component, describe:
1. Summary of its purpose, how it works and how it interacts with other components
2. Its API -- inputs, outputs, side-effects
3. High level logic behind the API

You want a digestible amount of detail here. Don't go too deep.
{{< /hint >}}

#### *{Component 1}*

#### *{Component 2}*

#### *{Component 3}*

## Alternatives

{{< hint danger >}}
Explain what alternative approaches you considered.

If there were multiple choices on a certain component,
you could make one section explaining those choices,
and the tradeoffs that led you to your decision.

This is where you really show your work, and the thought
process you followed.
{{< /hint >}}

### *{Why Not X?}*

### *{Why Not Y?}*

## Detailed Notes

{{< hint danger >}}
This section makes an inventory of applicable standards,
and explains how we will meet all of them with the proposed design.

Note that there might be finer details here that were not covered
in the proposal section.

I often hold off on writing all of the detailed notes until I'm
confident in my proposal -- otherwise you'll have to revise these
when one of your alternatives is found to be preferred.
{{< /hint >}}

### Release Process

### Operations

### Security

### Privacy

### *{Component 1 Deep-Dive}*

{{< hint danger >}}
Not all components need a full deep-dive, but it can be helpful
in case you don't want to create a whole new design doc just for
that component / there isn't quite enough ambiguity for that.
{{< /hint >}}