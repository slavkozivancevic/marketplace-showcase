# marketplace-showcase

Live portfolio page for the Marketplace platform (4-service e-commerce monorepo).

Served via GitHub Pages from this repo's root. Edit `index.html` and `style.css` to update.

## Local preview

Open `index.html` directly in a browser, or run any static server:

```bash
npx serve .
```

## Deploy

Any push to `main` rebuilds the GitHub Pages site (1–2 min).

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
- `08a-pipeline.png` — AWS CodePipeline (Source → DeployStaging → approval → DeployProduction)
- `08b-ci.png` — GitHub Actions CI run (lint · typecheck · unit · integration, all green)
- `08c-codebuild.png` — CodeBuild log (OpenNext build + `sst deploy` on Linux)