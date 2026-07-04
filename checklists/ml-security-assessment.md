# ML Security Assessment Checklist

Use this checklist to evaluate an ML system against common security and privacy risks. Items are grouped by OWASP Machine Learning Top 10 categories and mapped to typical system layers.

## How to use this checklist

1. Assign an owner to each control.
2. Check the status column as items are validated.
3. Record gaps and remediation plans in the [security assessment scorecard](../worksheets/security-assessment-scorecard.md).

## ML01: Input manipulation / adversarial inputs

| ID | Control | Owner | Status |
|---|---|---|---|
| INP-01 | Untrusted inputs are validated, normalized, and bounded before inference. | ML Engineer | - [ ] |
| INP-02 | Adversarial-input detection or preprocessing is in place for high-risk models. | ML / Security | - [ ] |
| INP-03 | Input schemas are enforced at the serving API and batch entry points. | Platform Engineer | - [ ] |
| INP-04 | Red-team or robustness tests are run before major releases. | Security / ML | - [ ] |
| INP-05 | Low-confidence or out-of-distribution inputs are routed to a safe fallback or human review. | Product / ML | - [ ] |

## ML02: Data poisoning

| ID | Control | Owner | Status |
|---|---|---|---|
| POI-01 | Data sources are approved, documented, and access-controlled. | Data Engineer | - [ ] |
| POI-02 | Anomaly detection is applied to training data and labels before training. | ML Engineer | - [ ] |
| POI-03 | The labeling process has quality controls and reviewer sign-off. | Data / ML | - [ ] |
| POI-04 | Training datasets are versioned and integrity-checked. | ML Platform | - [ ] |
| POI-05 | Retraining triggers require review when data distribution shifts. | ML Owner | - [ ] |

## ML03: Model inversion

| ID | Control | Owner | Status |
|---|---|---|---|
| INV-01 | Sensitive attributes are excluded or anonymized in training data where possible. | Data / Legal | - [ ] |
| INV-02 | Model outputs are confidence-thresholded or rounded to reduce leakage. | ML Engineer | - [ ] |
| INV-03 | A privacy risk review is performed for models trained on personal data. | Privacy / Legal | - [ ] |
| INV-04 | Differential privacy or other privacy-enhancing techniques are considered. | ML Research | - [ ] |

## ML04: Membership inference

| ID | Control | Owner | Status |
|---|---|---|---|
| MEM-01 | Model confidence vectors are not exposed to untrusted users. | ML Engineer | - [ ] |
| MEM-02 | Output calibration and rounding limit overconfidence leakage. | ML Engineer | - [ ] |
| MEM-03 | Membership-inference or shadow-model tests are run for sensitive models. | Security / ML | - [ ] |

## ML05: Model theft

| ID | Control | Owner | Status |
|---|---|---|---|
| THE-01 | Model artifacts are stored in encrypted, access-controlled object stores. | ML Platform | - [ ] |
| THE-02 | APIs enforce authentication, rate limiting, and per-tenant quotas. | Platform / Security | - [ ] |
| THE-03 | Watermarking or fingerprinting is considered for high-value models. | ML / Security | - [ ] |
| THE-04 | Public documentation does not expose architecture details unnecessarily. | Product / Security | - [ ] |

## ML06: Supply chain attacks

| ID | Control | Owner | Status |
|---|---|---|---|
| SUP-01 | Third-party libraries, base images, and training frameworks are pinned and scanned. | Security / Platform | - [ ] |
| SUP-02 | Model and data provenance is tracked from source to deployment. | ML Platform | - [ ] |
| SUP-03 | Build and training pipelines run on hardened, patched infrastructure. | Platform Engineer | - [ ] |
| SUP-04 | Signed artifacts are verified before deployment. | ML Platform | - [ ] |

## ML07: Training data extraction

| ID | Control | Owner | Status |
|---|---|---|---|
| EXT-01 | Training-data memorization tests are run for generative or high-capacity models. | ML / Security | - [ ] |
| EXT-02 | Prompts and queries are logged and audited for extraction attempts. | Security / Platform | - [ ] |
| EXT-03 | Output filtering blocks verbatim regurgitation of training samples. | ML Engineer | - [ ] |

## ML08: Model skewing

| ID | Control | Owner | Status |
|---|---|---|---|
| SKW-01 | Distribution shift is monitored between training, validation, and production data. | ML Engineer | - [ ] |
| SKW-02 | Feedback loops are identified and periodically broken with fresh ground-truth labels. | ML / Product | - [ ] |
| SKW-03 | Performance is reported across demographic or business slices. | ML / Fairness | - [ ] |

## ML09: Output integrity attack

| ID | Control | Owner | Status |
|---|---|---|---|
| OUT-01 | Predictions are signed or integrity-checked when consumed downstream. | ML Platform | - [ ] |
| OUT-02 | A/B or shadow traffic compares model outputs against baselines. | ML Engineer | - [ ] |
| OUT-03 | Automated alerts fire when output distributions change unexpectedly. | ML / SRE | - [ ] |

## ML10: Model poisoning

| ID | Control | Owner | Status |
|---|---|---|---|
| MOD-01 | Fine-tuning and adapter weights are loaded only from trusted, signed sources. | ML Platform | - [ ] |
| MOD-02 | Runtime model file integrity is verified on load. | Platform Engineer | - [ ] |
| MOD-03 | Model registry access is restricted to approved service identities. | ML Platform | - [ ] |
