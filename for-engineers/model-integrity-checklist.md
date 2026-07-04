# Model Integrity Checklist

Use this checklist to protect model provenance, prevent tampering, and improve adversarial robustness.

## Model provenance

| ID | Control | Owner | Status |
|---|---|---|---|
| PRO-01 | Training code, data version, hyperparameters, and metrics are recorded. | ML Engineer | - [ ] |
| PRO-02 | Experiment metadata is stored in a durable registry or tracking system. | ML Platform | - [ ] |
| PRO-03 | The training environment image and dependency lockfile are preserved. | ML / Platform | - [ ] |

## Signing and verification

| ID | Control | Owner | Status |
|---|---|---|---|
| SIG-01 | Model artifacts are signed at build or training completion. | ML Platform | - [ ] |
| SIG-02 | Signatures are verified before a model is loaded into production. | Platform Engineer | - [ ] |
| SIG-03 | Signing keys are stored in a hardened key management service with rotation. | Security | - [ ] |

## Serialization safety

| ID | Control | Owner | Status |
|---|---|---|---|
| SER-01 | Safe serialization formats are preferred; unsafe deserializers are hardened. | ML Engineer | - [ ] |
| SER-02 | Untrusted model files are never loaded directly into production. | Security / Platform | - [ ] |
| SER-03 | Model loading code runs with minimal privileges and sandboxing where possible. | Platform Engineer | - [ ] |

## Supply chain

| ID | Control | Owner | Status |
|---|---|---|---|
| SCM-01 | Base images, packages, and frameworks are pinned and vulnerability-scanned. | Security / Platform | - [ ] |
| SCM-02 | A software bill of materials is generated for training and serving environments. | Security / Platform | - [ ] |
| SCM-03 | Vulnerability scan results are reviewed before release. | Security | - [ ] |

## Adversarial robustness

| ID | Control | Owner | Status |
|---|---|---|---|
| ADV-01 | Adversarial tests are run for high-risk input modalities. | ML / Security | - [ ] |
| ADV-02 | Input preprocessing is hardened against evasion and obfuscation. | ML Engineer | - [ ] |
| ADV-03 | Robustness metrics are tracked across model versions. | ML Engineer | - [ ] |
