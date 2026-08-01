#!/usr/bin/env bash
set -euo pipefail

REPO="das-swagat/das-swagat.github.io"
DESCRIPTION="Interactive AI research portfolio and reusable academic, professional, and research website template built with HTML, CSS, and vanilla JavaScript."
HOMEPAGE="https://das-swagat.github.io"
TOPICS=(
  academic-portfolio
  academic-website
  portfolio-template
  portfolio-website
  research-portfolio
  researcher-portfolio
  personal-website
  resume-website
  open-source-template
  github-pages
  html
  css
  javascript
  vanilla-javascript
  responsive-design
)

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI (gh) is not installed. Install it from https://cli.github.com and run this script again."
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "Sign in first with: gh auth login"
  exit 1
fi

args=(repo edit "$REPO" --description "$DESCRIPTION" --homepage "$HOMEPAGE")
for topic in "${TOPICS[@]}"; do
  args+=(--add-topic "$topic")
done

gh "${args[@]}"
echo "Repository description, website, and topics updated."
