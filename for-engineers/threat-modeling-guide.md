# Threat Modeling Guide for ML Pipelines

This guide helps engineering teams identify threats in machine learning systems using the STRIDE framework. Use it during design, before a major release, or after a security incident.

## When to use this guide

- A new ML service or data pipeline is being designed.
- A new data source, third-party component, or deployment target is added.
- A major architecture change affects trust boundaries.
- A postmortem identifies gaps in threat coverage.

## Step 1: Scope the system

Draw the system boundary. Include:

- Data sources and ingestion pipelines
- Labeling services or human annotators
- Training environment and experiment tracking
- Model registry and artifact store
- Serving API and load balancers
- Downstream consumers and batch consumers

## Step 2: Identify trust zones

Group components by trust level. Examples:

| Trust zone | Examples |
|---|---|
| Untrusted | Public internet, customer payloads, open datasets |
| Partner | Vendor APIs, partner data feeds |
| Internal | Internal microservices, feature stores |
| Privileged | Training clusters, model registry, secrets store |
| Restricted | Personal data stores, audit logs |

## Step 3: List assets

Identify what an attacker would want:

- Training data and ground-truth labels
- Model weights, architectures, and hyperparameters
- Feature definitions and embeddings
- Prediction logs and user feedback
- Credentials, tokens, and signing keys
- Compute quota and API access

## Step 4: Walk through STRIDE

Map threats to the STRIDE categories. The table below shows ML-specific examples.

| STRIDE | ML example | Control starting point |
|---|---|---|
| Spoofing | An attacker impersonates the labeling service to inject bad labels. | Mutual TLS and authentication between pipeline stages |
| Tampering | Training data or model weights are modified in transit or at rest. | Integrity checks, signed artifacts, immutable storage |
| Repudiation | A training run is not logged, so no one can prove which data was used. | Immutable experiment logs and model provenance |
| Information disclosure | Model inversion recovers sensitive training records from outputs. | Output rounding, access controls, privacy review |
| Denial of service | Adversarial inputs trigger excessive compute or crash serving. | Rate limits, timeouts, input validation, autoscaling |
| Elevation of privilege | A compromised notebook gains write access to the model registry. | Least privilege, identity segmentation, audit logging |

## Step 5: Prioritize threats

Score each threat by likelihood and impact. Use a simple matrix:

| Likelihood / Impact | Low | Medium | High |
|---|---|---|---|
| High | Medium | High | Critical |
| Medium | Low | Medium | High |
| Low | Low | Low | Medium |

Focus first on critical and high-priority threats.

## Step 6: Turn threats into backlog items

For each prioritized threat, create a work item with:

- Owner
- Mitigation control
- Validation test or acceptance criteria
- Target date

## Example summary

| Threat ID | STRIDE | Asset | Threat | Control | Priority |
|---|---|---|---|---|---|
| T-001 | Tampering | Model weights | Attacker replaces weights in artifact store | Signed artifacts and verification on load | High |
| T-002 | Information disclosure | Training data | API exposes per-sample confidence scores | Round outputs and enforce access control | Medium |
| T-003 | Denial of service | Serving API | Adversarial inputs exhaust GPU memory | Input bounds and request timeouts | High |
