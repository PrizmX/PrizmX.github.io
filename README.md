# PrizmX.github.io

Official website for [PrizmX](https://github.com/PrizmX/PrizmX), built with Jekyll and deployed to GitHub Pages by GitHub Actions.

## Overview

The site is a single landing page in eight languages:

| URL | Language | Copy |
| --- | --- | --- |
| `/` | English (x-default) | `_data/i18n/en.yml` |
| `/de/` | Deutsch | `_data/i18n/de.yml` |
| `/fr/` | Français | `_data/i18n/fr.yml` |
| `/es/` | Español | `_data/i18n/es.yml` |
| `/ja/` | 日本語 | `_data/i18n/ja.yml` |
| `/ko/` | 한국어 | `_data/i18n/ko.yml` |
| `/zh-hans/` | 简体中文 | `_data/i18n/zh-Hans.yml` |
| `/zh-hant/` | 繁體中文 | `_data/i18n/zh-Hant.yml` |

Every page is rendered from shared layouts and includes. Copy lives in data files, so all languages always have the same structure.

Each language also has a Privacy Policy and Terms of Service:

| Page | English | Other languages |
| --- | --- | --- |
| Privacy Policy | `/privacy/` | `/<lang>/privacy/` |
| Terms of Service | `/terms/` | `/<lang>/terms/` |

`<lang>` is the lowercase directory from the table above (`de`, `zh-hans`, …). The English text is authoritative; translations say so at the top.

```
index.html, <lang>/index.html   page front matter: lang, title, description, OG image
_layouts/home.html              stacks the home sections in order
privacy.md, terms.md            English legal pages (Markdown); translations in <lang>/
_layouts/legal.html             legal page frame: title, last updated, translation note
_includes/sections/*.html       hero → features → native → protocols → editions → faq → cta
_includes/language-menu.html    header language dropdown
_data/i18n/<code>.yml           all user-visible copy, keyed identically
_config.yml                     site URL, product links, min macOS version, languages
_sass/*.scss                    tokens → base → layout → components → hero → sections
```

## SEO

- `jekyll-seo-tag`: title, description, canonical, Open Graph / Twitter cards, WebSite / WebPage JSON-LD.
- `jekyll-sitemap`: `sitemap.xml`; `robots.txt` points to it.
- `_includes/hreflang.html`: `hreflang` alternates for pages that share a `ref`, plus `x-default`.
- The language menu is plain links, so every translation is crawlable.
- `_includes/structured-data.html`: `SoftwareApplication` and `FAQPage` JSON-LD on the home page.
- Per-language Open Graph images in `assets/img/og-*.png` (1200×630).
- System fonts (per-language CJK stacks), inline SVG icons, and only a few lines of inline JavaScript to close the language menu on outside click or Escape.

## Editing

- **Copy**: edit every file in `_data/i18n/` together; keys must stay identical. `%min%` is replaced by `prizmx.min_macos` from `_config.yml`.
- **CJK copy** (ja, zh-Hans, zh-Hant, ko): keep each paragraph on one line, because YAML folding inserts spaces at line breaks. Headings break only at spaces or `<wbr>`.
- **Page title / description**: front matter of `index.html` and `<lang>/index.html`.
- **Links and requirements**: the `prizmx` block in `_config.yml`.
- **Legal pages**: edit `privacy.md` / `terms.md` first, then every `<lang>/privacy.md` / `<lang>/terms.md`, and bump `last_updated` in all of them. The contact address comes from `prizmx.contact_email`; production builds fail while it is empty (`_plugins/required_config.rb`).
- **New language**: add `_data/i18n/<code>.yml`, a page `<code-lowercase>/index.html` with `lang: <code>` and `ref: home`, the legal pages `<code-lowercase>/privacy.md` and `terms.md`, an OG image `assets/img/og-<code-lowercase>.png`, and an entry under `languages` in `_config.yml`.

## Linking from the apps

Link to the stable URLs below. Pick the localized path from the device language when it is one of the site languages, otherwise use the English one:

```
https://prizmx.github.io/privacy/        https://prizmx.github.io/<lang>/privacy/
https://prizmx.github.io/terms/          https://prizmx.github.io/<lang>/terms/
```

Settle the final domain before shipping these links: moving to a custom domain later relies on GitHub's redirect from `prizmx.github.io`.

## Develop

Requires Ruby 3.2+ and Bundler.

```bash
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve --livereload
```

Open http://127.0.0.1:4000.

## Deploy

Pushing to `main` runs `.github/workflows/pages.yml`, which builds the site and deploys it to GitHub Pages.

One-time setup: **Settings → Pages → Build and deployment → Source: GitHub Actions**.

## License

[Apache License 2.0](LICENSE)
