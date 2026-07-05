# Startup Security Essentials for ML Startups

This guide is for seed-stage ML startups that are about to handle customer data or ship a model to production. It focuses on the controls that matter most at each stage, so you do not over-invest before product-market fit or under-invest before a big customer deal.

## How to read this guide

- **Do first** — Minimum viable security. Do these before connecting to any customer data.
- **Do before Series A** — Scale the basics and reduce the risk of a high-profile failure.
- **Do before SOC 2** — Evidence and repeatable process that auditors and enterprise buyers expect.

---

## Do first

### 1. Know what data you collect and where it lives

Create a simple data inventory: data type, source, where it is stored, who can access it, and whether it contains personal or sensitive information. Update it when you add a new data source or customer.

### 2. Separate customer data from development and testing

Never use production customer data in local notebooks, tests, or demo environments. Use synthetic data or a clearly labeled, access-controlled sandbox.

### 3. Enforce authentication on every production API and service

All model serving endpoints, internal tools, and cloud consoles need unique credentials and multi-factor authentication. Disable default passwords and shared accounts.

### 4. Encrypt data at rest and in transit

Use TLS for network traffic and platform-managed encryption for databases, object storage, and backups. Do not store secrets or keys in source code.

### 5. Keep secrets out of code

Store API keys, model serving tokens, database credentials, and cloud keys in a secrets manager or managed vault. Rotate them when someone leaves or after a suspected leak.

---

## Do before Series A

### 6. Define who can access models and training data

Apply least-privilege access to model artifacts, training datasets, experiment logs, and inference endpoints. Review access quarterly or whenever the team changes.

### 7. Version and protect model artifacts and training pipelines

Use version control for code, a model registry for artifacts, and immutable logs for training runs. A release should be reproducible: same code, same data reference, same environment.

### 8. Add basic monitoring for model behavior and infrastructure

Track prediction volume, latency, errors, cost, and simple drift signals. Set alerts for anomalies such as a sudden spike in errors, a drop in input quality, or unexpected cost increases.

### 9. Write down an incident response plan

Define how the team detects, escalates, contains, and communicates a security or model failure. Include a way to disable a model quickly without taking down the whole service.

---

## Do before SOC 2

### 10. Document policies, evidence, and repeatable controls

Write short policies for access control, change management, vendor review, and incident response. Maintain evidence: access reviews, training logs, penetration-test results, and change tickets. Automate evidence collection where possible.

## Quick reference

| Stage | Focus | Key artifacts |
|---|---|---|
| Do first | Protect customer data and credentials | Data inventory, MFA, encryption, secrets manager |
| Before Series A | Build repeatable ML security habits | Access review, model registry, monitoring, incident plan |
| Before SOC 2 | Demonstrate control to auditors and buyers | Policies, evidence, access reviews, vendor assessments |
