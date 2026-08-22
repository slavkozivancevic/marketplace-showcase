# marketplace-showcase

Live portfolio page for the MarketVerse platform (4-service e-commerce system, one repo per service).

Served via GitHub Pages from this repo's root. Edit `index.html` and `style.css` to update.

## Local preview

Open `index.html` directly in a browser, or run any static server:

```bash
npx serve .
```

## Deploy

Any push to `main` rebuilds the GitHub Pages site (1-2 min).

## Screenshots

Place screenshot PNGs in `screenshots/`. Filenames are referenced from `index.html`:

- `01a-storefront-hero.png`
- `01b-storefront-departments.png`
- `02a-listing.png`
- `02b-listing-quickadd.png`
- `03a-pdp.png`
- `03b-variants.png`
- `03c-reviews-related.png`
- `04-chat.png`
- `05a-checkout-success.png`
- `05b-emails.png`
- `05c-dashboard-order.png`
- `06a-bulk-import.png`
- `06b-bulk-review.png`
- `07-i18n-theme.png`
- `08a-pipeline.png` - AWS CodePipeline (Source, DeployStaging, approval, DeployProduction)
- `08b-ci.png` - GitHub Actions CI run, all checks green
- `08c-codebuild.png` - CodeBuild log (OpenNext build + `sst deploy` on Linux)

### Outdated - worth re-shooting

The delivery section (08) grew past its screenshots on 2026-08-22:

- **`08b-ci.png`** predates the Playwright E2E job and the branch ruleset. A
  current shot of a PR's check box - four checks green, each tagged `Required`,
  with `Squash and merge` as the only merge button - carries the whole story in
  one image and is a stronger picture than a workflow run list.
- **Not yet captured:** the release train. A release-please Release PR showing
  the generated notes grouped into Features / Bug Fixes / Build & Maintenance,
  or the cut GitHub Release itself, would document the versioning half of the
  delivery section that currently has no image at all.