# Hugo to MkDocs Material Migration Plan

## Overview
This plan converts your Hugo-based documentation site to MkDocs Material, prioritizing **maximum portability** by using only standard markdown features. The goal is to eliminate all custom/non-portable content mechanisms while preserving all current functionality.

## Current State Analysis

**Content Structure:**
- 18 total markdown files across 5 main sections:
  - Project Lifecycle (7 files)
  - Standards (2 files)
  - Principles (4 files)
  - Design Patterns (2 files)
  - System Archetypes (2 files)
  - Plus 1 home page

**Non-Portable Elements to Convert:**
1. **Hugo shortcodes** (12 occurrences):
   - `{{< ref "path" >}}` - internal links (8 occurrences)
   - `{{< hint type >}}` - admonition boxes (3+ occurrences)
   - `{{< section >}}` - auto-listing pages (4 occurrences)
2. **Hugo frontmatter** - some fields like `weight`, `bookCollapseSection`, `bookToC`
3. **Theme configuration** in `config.toml`

**Already Portable:**
- ✅ Mermaid diagrams (in fenced code blocks)
- ✅ Standard markdown content
- ✅ YAML frontmatter (title, date, draft, summary)

---

## Phase 1: Setup MkDocs Material

### 1.1 Create Conda Environment
Create a dedicated conda environment for this project:
```bash
conda create -n software-quality python=3.11 -y
conda activate software-quality
```

### 1.2 Create `requirements.txt`
Create a `requirements.txt` file to track Python dependencies:
```
mkdocs-material>=9.5.0
```

This ensures:
- Dependencies are version-controlled
- Easy environment recreation
- Clear dependency tracking for future maintenance

### 1.3 Install MkDocs and Material Theme
```bash
pip install -r requirements.txt
```

### 1.4 Create `mkdocs.yml` Configuration
Create a new `mkdocs.yml` file with:
- Site metadata (title, description, repo URL)
- Material theme configuration (dark mode support)
- Mermaid diagram support
- Navigation structure matching current Hugo sections
- Search functionality
- Edit links to GitHub

**Key Features Mapped:**
- Hugo Book dark theme → Material dark/light toggle
- Hugo TOC → Material built-in TOC
- Hugo edit path → Material edit_uri
- Hugo git info → Material git-revision-date plugin

### 1.5 Create `.gitignore` Entry
Add `site/` to `.gitignore` (MkDocs build output directory)

**End of Phase 1 - Testing:**
- ✅ `conda activate software-quality` activates the environment successfully
- ✅ `mkdocs --version` shows MkDocs Material is installed
- ✅ `mkdocs.yml` exists with basic configuration
- ✅ `requirements.txt` exists and lists mkdocs-material
- ✅ Running `mkdocs serve` should start (but will fail due to missing `docs/` directory - this is expected)

---

## Phase 2: Restructure Content Directory

### 2.1 Create New `docs/` Directory
MkDocs uses `docs/` as the default content directory (vs Hugo's `content/`).

### 2.2 Move and Reorganize Files
Transform Hugo's structure to MkDocs conventions:

**Hugo Structure:**
```
content/
├── _index.md (home page)
├── project-lifecycle/
│   ├── _index.md (section listing)
│   ├── requirements-gathering.md
│   ├── design.md
│   └── ...
├── standards/
│   ├── _index.md
│   └── design-template.md
└── ...
```

**MkDocs Structure:**
```
docs/
├── index.md (home page, renamed from _index.md)
├── project-lifecycle/
│   ├── index.md (section listing, renamed from _index.md)
│   ├── requirements-gathering.md
│   ├── design.md
│   └── ...
├── standards/
│   ├── index.md
│   └── design-template.md
└── ...
```

**Changes:**
- Rename all `_index.md` → `index.md` (MkDocs convention)
- Move from `content/` → `docs/`
- Preserve directory structure (already well-organized)

**End of Phase 2 - Testing:**
- ✅ `docs/` directory exists with all content files
- ✅ All `_index.md` files renamed to `index.md`
- ✅ Directory structure matches: `docs/project-lifecycle/`, `docs/standards/`, etc.
- ✅ Running `mkdocs serve` should now start and show the site (though navigation and shortcodes won't work yet - this is expected)
- ✅ Can access http://127.0.0.1:8000 and see some content rendering

---

## Phase 3: Convert Hugo Shortcodes to Standard Markdown

### 3.1 Convert `{{< ref >}}` Links to Relative Markdown Links

**Pattern to Find:** `{{< ref "path/to/page" >}}`

**Conversion Rules:**
- `{{< ref "principles/separation-of-concerns" >}}` → `../principles/separation-of-concerns.md`
- `{{< ref "standards/design-template" >}}` → `../standards/design-template.md`
- `{{< ref "project-lifecycle" >}}` → `../project-lifecycle/index.md`

**Strategy:**
- Use relative paths (portable to any static site generator)
- Include `.md` extension (works in GitHub, most SSGs)
- Calculate correct `../` depth based on current file location

**Files to Update:**
- `/content/_index.md` (4 ref links)
- `/content/principles/o1-effort-per-change.md` (1 ref link)
- `/content/principles/solve-the-right-problem.md` (2 ref links)
- `/content/project-lifecycle/design.md` (2 ref links)
- `/content/project-lifecycle/requirements-gathering.md` (2 ref links)
- `/content/standards/design-template.md` (2 ref links)

### 3.2 Convert `{{< hint >}}` to Markdown Admonitions

MkDocs Material uses standard admonition syntax that's widely portable:

**Hugo Syntax:**
```markdown
{{< hint warning >}}
NOTE: This site is under development.
{{< /hint >}}
```

**Portable Markdown (MkDocs, GitHub, many others):**
```markdown
!!! warning
    NOTE: This site is under development.
```

**Conversion Map:**
- `{{< hint warning >}}` → `!!! warning`
- `{{< hint info >}}` → `!!! info`
- `{{< hint danger >}}` → `!!! danger`

**Files to Update:**
- `/content/_index.md` (2 hint boxes: warning, info)
- `/content/design-patterns/plugin-architecture.md` (2 info hints)
- `/content/standards/design-template.md` (16+ danger hints)

### 3.3 Remove `{{< section >}}` and Create Manual Listings

The `{{< section >}}` shortcode auto-generates lists of child pages. Replace with manual markdown lists that are:
- Fully portable
- More explicit and maintainable
- Work in any markdown viewer

**Files to Update:**
- `/content/principles/_index.md`
- `/content/project-lifecycle/_index.md`
- `/content/standards/_index.md`
- `/content/design-patterns/_index.md`
- `/content/system-archetypes/_index.md`

**Strategy:**
Each `index.md` file should manually list its child pages:

```markdown
## Pages in This Section

- [Requirements Gathering](requirements-gathering.md) - Define the problem before solving it
- [Design](design.md) - Create a comprehensive technical design
- [Planning](planning.md) - Break down work and estimate timeline
- ...
```

**Benefits:**
- You control the order and descriptions
- Works in GitHub, VS Code, any markdown viewer
- No magic or generator-specific features

**End of Phase 3 - Testing:**
- ✅ All `{{< ref >}}` shortcodes replaced with relative `.md` links
- ✅ All `{{< hint >}}` shortcodes replaced with `!!!` admonitions
- ✅ All `{{< section >}}` shortcodes replaced with manual page listings
- ✅ Running `mkdocs serve` shows site without any Hugo shortcode errors
- ✅ Click on links in the rendered site to verify they navigate correctly
- ✅ Admonition boxes (warning, info, danger) render with proper styling
- ✅ Section index pages show manual listings of child pages

---

## Phase 4: Update Frontmatter

### 4.1 Keep Portable Fields
**Keep (standard across many systems):**
- `title:` - Universal
- `date:` - Common metadata
- `summary:` / `description:` - Common metadata

### 4.2 Remove Hugo-Specific Fields
**Remove (Hugo-specific):**
- `weight:` - Navigation ordering (replaced by mkdocs.yml nav config)
- `bookCollapseSection:` - Theme-specific
- `bookToC:` - Theme-specific
- `draft:` - MkDocs has different draft handling

### 4.3 Add Optional MkDocs Fields
**Consider Adding:**
- `description:` - For SEO and page summaries (if not using summary)
- `tags:` - If you want taxonomy support later
- `authors:` - For attribution

**End of Phase 4 - Testing:**
- ✅ All frontmatter cleaned: only `title`, `date`, `description` remain
- ✅ No Hugo-specific fields (`weight`, `bookCollapseSection`, etc.) in any file
- ✅ Running `mkdocs serve` still works correctly
- ✅ Pages display without frontmatter showing in rendered content

---

## Phase 5: Configure Navigation in mkdocs.yml

### 5.1 Define Explicit Navigation Structure
Replace Hugo's automatic navigation (based on `weight` and folders) with explicit nav config:

```yaml
nav:
  - Home: index.md
  - Project Lifecycle:
      - project-lifecycle/index.md
      - Requirements Gathering: project-lifecycle/requirements-gathering.md
      - Design: project-lifecycle/design.md
      - Planning: project-lifecycle/planning.md
      - Implementation: project-lifecycle/implementation.md
      - Release: project-lifecycle/release.md
      - Operation: project-lifecycle/operation.md
      - Deprecation: project-lifecycle/deprecation.md
  - Standards:
      - standards/index.md
      - Design Template: standards/design-template.md
  - Principles:
      - principles/index.md
      - Solve the Right Problem: principles/solve-the-right-problem.md
      - Separate Concerns: principles/separation-of-concerns.md
      - O(1) Effort per Change: principles/o1-effort-per-change.md
  - Design Patterns:
      - design-patterns/index.md
      - Clean Plugin Architecture: design-patterns/plugin-architecture.md
  - System Archetypes:
      - system-archetypes/index.md
```

**Benefits:**
- Explicit ordering (no magic `weight` field needed)
- Easy to reorganize
- Clear menu structure
- Each section shows its index page first, then child pages

**End of Phase 5 - Testing:**
- ✅ Navigation sidebar appears with all sections properly organized
- ✅ Each main section (Project Lifecycle, Standards, etc.) is collapsible/expandable
- ✅ Section index pages appear as the first item under each section
- ✅ Child pages appear in the correct order under their parent sections
- ✅ Clicking navigation items navigates to the correct page

---

## Phase 6: Configure Mermaid Diagrams

### 6.1 Enable Mermaid in mkdocs.yml
```yaml
markdown_extensions:
  - pymdownx.superfences:
      custom_fences:
        - name: mermaid
          class: mermaid
          format: !!python/name:pymdownx.superfences.fence_code_format
```

### 6.2 Verify Existing Mermaid Blocks
Your mermaid diagrams are already in portable fenced code block format:
````markdown
```mermaid
flowchart TD
    ...
```
````

**No changes needed!** This format works in:
- MkDocs Material
- GitHub
- GitLab
- VS Code (with extensions)
- Most modern markdown renderers

**End of Phase 6 - Testing:**
- ✅ `mkdocs.yml` has mermaid configuration in `markdown_extensions`
- ✅ Running `mkdocs serve` and viewing pages with mermaid diagrams renders them correctly
- ✅ Mermaid diagrams display with proper dark theme styling
- ✅ All flowcharts and diagrams are interactive (can zoom/pan if supported)

---

## Phase 7: Update Assets and Custom Styling

### 7.1 Review Custom SCSS
Check `/assets/_custom.scss` for any Hugo-specific styles.

**Options:**
1. Convert to MkDocs Material custom CSS (`docs/stylesheets/extra.css`)
2. Remove if not needed (Material has excellent defaults)

### 7.2 Custom Layout Files
Review custom layouts in `/layouts/`:
- Mermaid render template (already handled by MkDocs)
- Custom partials for head/footer (convert to Material theme customization if needed)
- Shortcodes (already being removed)

**Likely outcome:** Most won't be needed. Material theme is very complete.

**End of Phase 7 - Testing:**
- ✅ Custom styling (if any) reviewed and documented
- ✅ Decision made on whether custom CSS is needed
- ✅ If custom CSS added, verify it applies correctly in `mkdocs serve`
- ✅ Site appearance matches expectations (colors, fonts, spacing)

---

## Phase 8: Update Documentation and Deployment

### 8.1 Update DEVELOPMENT.md
Replace Hugo instructions with MkDocs:

```markdown
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
```bash
conda activate software-quality
```

## Test A Change
```bash
mkdocs serve
```

## Build the Site
```bash
mkdocs build
```

## Deploy to GitHub Pages
```bash
mkdocs gh-deploy
```
```

### 8.2 Update README.md
Update any Hugo references to MkDocs.

### 8.3 Configure GitHub Actions for Deployment
Create `.github/workflows/docs.yml` for automatic deployment:
- Build on push to main
- Deploy to GitHub Pages
- Use Python + MkDocs Material

**End of Phase 8 - Testing:**
- ✅ `DEVELOPMENT.md` updated with conda and MkDocs instructions
- ✅ `README.md` references MkDocs instead of Hugo
- ✅ GitHub Actions workflow file exists (if applicable)
- ✅ Can successfully follow the instructions in DEVELOPMENT.md to recreate the environment

---

## Phase 9: Testing and Validation

### 9.1 Local Testing
```bash
mkdocs serve
```
- Verify all pages render correctly
- Check all internal links work
- Verify mermaid diagrams display
- Test navigation structure
- Check mobile responsiveness
- Test dark/light theme toggle

### 9.2 Link Validation
Check for broken links:
```bash
mkdocs build --strict
```
This will fail if there are broken internal links.

### 9.3 Content Verification
- Verify all admonitions render correctly
- Check code blocks with syntax highlighting
- Verify frontmatter doesn't show in rendered pages
- Test search functionality

**End of Phase 9 - Testing:**
- ✅ **Complete end-to-end validation**: All pages, links, diagrams, navigation work perfectly
- ✅ `mkdocs build --strict` completes without errors or warnings
- ✅ All internal links navigate correctly (no 404s)
- ✅ All mermaid diagrams render
- ✅ All admonitions display with proper styling
- ✅ Search finds content correctly
- ✅ Mobile view works well
- ✅ Dark/light theme toggle works
- ✅ Built site in `site/` directory is ready for deployment

---

## Phase 10: Cleanup and Final Migration

### 10.1 Remove Hugo-Specific Files
After verifying MkDocs works:
- Remove `/config.toml`
- Remove `/themes/` directory
- Remove `/archetypes/` directory
- Remove `/layouts/` directory (if all converted)
- Remove `/resources/` and `/public/` (Hugo build artifacts)
- Keep `/content/` temporarily as backup, then remove

### 10.2 Update .gitignore
```
# MkDocs
site/

# Old Hugo artifacts (if not already ignored)
public/
resources/
```

### 10.3 Final Commit
Create clear commit message documenting the migration from Hugo to MkDocs Material.

**End of Phase 10 - Testing:**
- ✅ All Hugo-specific files removed (`config.toml`, `themes/`, `archetypes/`, etc.)
- ✅ `.gitignore` updated with MkDocs-specific entries
- ✅ Old `content/` directory removed (after keeping as backup temporarily)
- ✅ Repository is clean with only MkDocs-related files
- ✅ Final `mkdocs serve` test confirms everything still works after cleanup
- ✅ **Migration complete!** Site is fully functional, portable, and production-ready

---

## Portability Achieved

After this migration, your documentation will use **only standard markdown features**:

✅ **100% Portable:**
- Standard markdown syntax
- YAML frontmatter (title, date, description)
- Relative `.md` links
- Fenced code blocks for mermaid diagrams
- Standard admonition syntax (widely supported)
- Manual page listings (work everywhere)

✅ **Migration Paths:**
Because you're using standard markdown, migrating to other systems later is trivial:
- **GitHub/GitLab Wiki:** Works as-is
- **Docusaurus:** Simple config change, minimal frontmatter updates
- **VitePress:** Minimal changes
- **Sphinx:** Straightforward with MyST parser
- **Jekyll:** Easy conversion
- **Plain HTML generators:** Trivial

✅ **Readable Without Building:**
Your markdown files are fully readable on GitHub, VS Code, or any markdown viewer without needing to build the site.

---

## Estimated Effort

- **Phase 1-2:** 15 minutes (setup, directory structure)
- **Phase 3:** 45 minutes (convert shortcodes in 18 files)
- **Phase 4:** 15 minutes (clean frontmatter)
- **Phase 5:** 20 minutes (configure navigation)
- **Phase 6:** 5 minutes (verify mermaid works)
- **Phase 7:** 15 minutes (assets review)
- **Phase 8:** 20 minutes (update docs, CI/CD)
- **Phase 9:** 30 minutes (testing)
- **Phase 10:** 10 minutes (cleanup)

**Total: ~2.5-3 hours**

---

## Next Steps

Once you approve this plan, I will execute it phase by phase, testing at each stage to ensure nothing breaks.
