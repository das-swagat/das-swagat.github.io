# Academic, Professional and Research Portfolio Template

A reusable single-page portfolio for academic, professional, research, technical, creative, consulting, education, and leadership work. It is not tied to a specific degree, institution, discipline, or career stage.

This folder is completely separate from the personal website at the repository root. The root `index.html` controls the main website. Files in this folder do not replace or modify it.

## Fastest setup

1. Download `academic-professional-research-portfolio-template.zip` from the repository root.
2. Extract it on your computer.
3. Create a new GitHub repository.
   - Use `<your-username>.github.io` for a user site, or
   - use any repository name for a project site.
4. Upload the extracted files to the **root** of the new repository.
5. Open `index.html` and search for `CUSTOMIZE` comments.
6. Replace all placeholder text, links, metrics, projects, outputs, experience, education, and contact details.
7. Replace `assets/sample-resume.pdf` with your own PDF, or change the resume path in `index.html`.
8. In GitHub, open **Settings → Pages**, choose **Deploy from a branch**, and select `main` and `/ (root)`.

## Previewing this copy

When this folder remains inside another GitHub Pages repository, its example page can be viewed at:

```text
https://<username>.github.io/<repository>/portfolio-template/
```

For a user site repository named `<username>.github.io`, the path is:

```text
https://<username>.github.io/portfolio-template/
```

## Using a fork of the original repository

GitHub forks the entire repository, not only this folder. A fork will initially include the original personal website at the root.

To turn a fork into your own site, clone the fork locally and run:

```bash
git clone https://github.com/YOUR-USERNAME/REPOSITORY.git
cd REPOSITORY
rm -rf assets index.html README.md academic-professional-research-portfolio-template.zip
cp -R portfolio-template/. .
rm -rf portfolio-template
git add -A
git commit -m "Use the reusable portfolio template"
git push
```

Then customize the new root `index.html` and enable GitHub Pages. Creating a new repository from the downloadable template ZIP is simpler for most users.

## File structure

```text
index.html                 Main portfolio, styling, interactions, and chart logic
assets/sample-resume.pdf   Replace with your own resume or portfolio document
LICENSE                    MIT license for the reusable template code
template-preview.png       Example social or repository preview image
README.md                   This customization guide
```

## Where to customize

The template is deliberately kept in one `index.html` file. Search for `CUSTOMIZE` to locate the main editing points.

### 1. Identity, metadata, and search preview

At the top of `index.html`, replace:

- Browser `<title>`
- Meta description
- Canonical URL
- Open Graph title, description, URL, and preview image
- Schema.org JSON-LD name, title, affiliation, and profile links

### 2. Name, role, focus, and profile links

Search for the `HERO` section. Replace:

- `Your Name`
- Current role or professional title
- Research, professional, or technical focus areas
- Resume, GitHub, LinkedIn, Scholar, ResearchGate, ORCID, email, or other links

Delete links that do not apply. All top navigation links use the same styling.

### 3. Colors and visual theme

Search for `CUSTOMIZE COLORS AND GLOBAL APPEARANCE` and edit the variables in `:root`:

```css
--bg-1
--bg-2
--panel
--panel-dark
--border
--border-soft
--text
--muted
--accent
--accent-soft
--white
--shadow
```

Changing these variables recolors the full site. Keep enough contrast between text and backgrounds.

### 4. Desktop layout and sticky rails

Search for `CUSTOMIZE DESKTOP LAYOUT`.

The desktop layout contains:

1. A left impact or metrics rail
2. Main portfolio content
3. A right resume and career-summary rail

Adjust the three column widths in `.page-frame`. The rails automatically return to normal page flow on narrower screens.

### 5. Metrics and animated chart

Search for `CUSTOMIZE IMPACT METRICS` near the bottom of the file.

Update:

- KPI labels in the left-rail HTML
- Values in the `impactStats` JavaScript object
- Year/value pairs in `yearly`
- Chart heading

The chart rescales automatically. Values appear on hover and keyboard focus.

The metric widget does not have to show citations. It can show clients, projects, publications, certifications, products, grants, sales, talks, or other meaningful indicators.

### 6. Projects, research, and selected work

Duplicate or remove complete card blocks. A standard expandable card is:

```html
<div class="card-item interactive-card" tabindex="0">
  <h3 class="card-title">Visible title</h3>
  <div class="card-meta">Visible date or category</div>
  <div class="card-submeta">Visible organization or technology</div>
  <div class="card-body">
    <p>Details revealed by hover, keyboard focus, or touch.</p>
  </div>
</div>
```

Keep `interactive-card` and `tabindex="0"` so the hidden details remain accessible to keyboard and touch users.

### 7. Publications, reports, software, designs, or external outputs

Use `.pub-card` when the full card should open another page:

```html
<a class="pub-card" href="https://example.com" target="_blank" rel="noopener noreferrer">
  <span class="pub-title">Output title</span>
  <div class="pub-meta">Venue, client, platform, or year</div>
  <p class="pub-abstract">Details shown on hover or focus.</p>
</a>
```

This section can represent publications, reports, case studies, software, datasets, designs, products, talks, or media.

### 8. Experience, education, awards, and certifications

Each section uses the same card system. Edit the existing placeholders or copy a full card to add another item.

Remove entire sections that do not fit your portfolio. The JavaScript does not depend on a fixed number of sections.

### 9. Resume or portfolio document

Replace:

```text
assets/sample-resume.pdf
```

with your own PDF using the same filename. To use another filename, update every reference to `assets/sample-resume.pdf` in `index.html`.

### 10. Optional effects and functions

The JavaScript is divided into labeled blocks:

- Scroll-entry animation
- Cursor glow
- Animated metric counters
- Yearly bar chart
- Keyboard and touch card expansion

Each block includes comments. The cursor and scroll animation can be removed independently. Keep the keyboard/touch block when using hidden hover details.

### 11. Adding images

Create an `assets/images/` folder and reference images with relative paths:

```html
<img src="assets/images/project-image.jpg" alt="Clear description of the image" loading="lazy">
```

Use descriptive alternative text and compressed images.

## Publishing with GitHub Pages

For a new repository:

1. Open **Settings → Pages**.
2. Under **Build and deployment**, choose **Deploy from a branch**.
3. Select `main` and `/ (root)`.
4. Save and wait for the deployment to complete.

## License

The template code is licensed under the MIT License. Replace the generic copyright holder in `LICENSE` when distributing a modified template under your own name or organization.

Personal resumes, publications, photographs, project data, and other content added by individual users are not automatically covered by the template license unless their owner explicitly says otherwise.
