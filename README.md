# ML Security & Production Readiness Checklists

![Markdown Lint](https://github.com/gadsosa/ml-security-checklist/actions/workflows/markdown-lint.yml/badge.svg)

A public, non-proprietary collection of checklists, scorecards, and guides for securing machine learning systems and shipping them to production with confidence. The content aligns with the OWASP Machine Learning Top 10 and the NIST AI Risk Management Framework concepts.

## Audience map

| Audience | What you need | Start here |
|---|---|---|
| Non-technical leaders | Plain-language risk context and a way to track top concerns | [`for-leaders/executive-summary.md`](for-leaders/executive-summary.md) |
| Engineering teams | Concrete, actionable security and reliability controls | [`for-engineers/threat-modeling-guide.md`](for-engineers/threat-modeling-guide.md) |
| Startup founders and early-stage teams | Stage-appropriate security priorities before customer data and enterprise deals | [`for-startups/startup-security-essentials.md`](for-startups/startup-security-essentials.md) |
| Investors and acquirers | Red flags and scoring for technical due diligence | [`for-investors/technical-due-diligence.md`](for-investors/technical-due-diligence.md) |

## How to use this repo

1. Pick a checklist based on your role or project phase.
2. Review each item with the relevant owners (security, ML, platform, legal).
3. Check off completed items (`- [x]`).
4. Record scores and evidence in the [`worksheets/`](worksheets/) scorecards.
5. Treat gaps as backlog items and re-assess quarterly or at each model release.

## Repo map

| Path | Purpose |
|---|---|
| [`checklists/`](checklists/) | End-to-end assessment, production readiness, and model release gate checklists |
| [`for-leaders/`](for-leaders/) | Executive summary and risk register template |
| [`for-engineers/`](for-engineers/) | Threat modeling, data pipeline, model integrity, and inference observability guides |
| [`for-startups/`](for-startups/) | Stage-ordered security essentials for seed-stage ML startups |
| [`for-investors/`](for-investors/) | Technical due-diligence checklist and scoring table |
| [`worksheets/`](worksheets/) | Fillable scorecards for PRR and security assessments |
| [`compliance-mapping.md`](compliance-mapping.md) | Mapping of checklist items to SOC 2, ISO 27001, and NIST AI RMF |

## Contributing

This repository is released under CC-BY-4.0. Improvements, corrections, and translations are welcome via pull request.
