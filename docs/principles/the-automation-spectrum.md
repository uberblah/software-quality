---
title: "The Automation Spectrum"
date: 2025-11-26T01:11:39-08:00
description: Automation is a ladder, not a switch.
---

# The Automation Spectrum

## What is it?

Automation is not binary (Automated vs. Manual). It is a spectrum of increasing reliability and decreasing toil.

## The Ladder

1.  **Manual**: Human does it ad-hoc. High variability, high risk.
2.  **Documented**: Human follows a checklist (Runbook). Reduced variability.
3.  **Scripted**: Human runs a script. Reduces toil and error, but requires human trigger.
4.  **Automated**: Machine runs the script (Cron/CI). No human trigger needed.
5.  **Autonomous**: Machine decides when to run the script (Self-healing).

## Guideline

*   **Climb the Ladder**: Move up the ladder as frequency and risk increase.
*   **Don't Skip Steps**: It is often dangerous to jump straight to Autonomous if you haven't proven the process with a Checklist or Script first.
*   **ROI**: Not everything needs to be level 5. A checklist is often the highest ROI form of automation.

## Why Start at the Bottom?

If you can't do it by hand...

1. You don't really know how to do it, or if it's feasible at all.
2. You don't know how often it will work, or what edge cases to expect.
3. You will miss additional sub-problems you need to break down for automation.
4. It will be too hard to debug when you are working on automation.
