# Development of this Repo

## Tools
- [MkDocs Material](https://squidfunk.github.io/mkdocs-material/)
- Conda for environment management

## Setup

### First Time Setup
```bash
# Create and activate the conda environment
conda create -n software-quality python=3.11 -y
conda activate software-quality

# Install dependencies
pip install -r requirements.txt
```

### Activate Environment
Every time you work on the project, activate the environment:
```bash
conda activate software-quality
```

## Test A Change
Start the local development server with live reload:
```bash
mkdocs serve
```

Then open http://127.0.0.1:8000 in your browser.

## Build the Site
Build the static site (output goes to `site/` directory):
```bash
mkdocs build
```

To build with strict mode (fails on warnings like broken links):
```bash
mkdocs build --strict
```

## Deploy to GitHub Pages
Deploy the site to GitHub Pages (gh-pages branch):
```bash
mkdocs gh-deploy
```

## Site Structure Plan
- Home
    - Project Lifecycle Overview
    - Sample Projects
        - Example 1
        - Example 2
        - Example 3
    - Project Lifecycle
        - Requirements Gathering
            - *Requirements Template*
        - Technical Design
            - *Design Thinking*
            - *Design Template*
        - Planning
            - *Roadmap Template*
        - Execution
            - *Foundational Dev Tools*
            - *Code Review Checklist*
        - Release
            - *Release Checklist*
        - Operation
            - *On-Call Runbook Template*
            - *On-Call Readiness*
        - Deprecation
    - Standards
        - Requirements Template
        - Design Thinking
        - Design Template
        - Roadmap Template
        - Release Checklist
        - Foundational Dev Tools
            - Editor
            - Linter
            - Test Framework
            - IDL
            - Packaging System
        - Code Review Checklist
            - Rule 1
            - Rule 2
            - Rule 3
        - On-Call Runbook Template
        - On-Call Readiness
    - Software Principles
        - Principle 1
        - Principle 2
    - System Archetypes
        - Archetype 1
        - Archetype 2
