# Data Pipeline Security Checklist

Use this checklist to secure the data path from ingestion through labeling, versioning, storage, access, and privacy review.

## Data ingestion

| ID | Control | Owner | Status |
|---|---|---|---|
| ING-01 | Data sources are inventoried, approved, and reviewed periodically. | Data Engineer | - [ ] |
| ING-02 | Ingestion endpoints require authentication and authorization. | Platform Engineer | - [ ] |
| ING-03 | Schema, format, and range validation run before data enters storage. | Data Engineer | - [ ] |
| ING-04 | Sensitive data is encrypted in transit using modern TLS. | Security / Platform | - [ ] |

## Data storage

| ID | Control | Owner | Status |
|---|---|---|---|
| STO-01 | Data at rest is encrypted with managed or customer-managed keys. | Security / Platform | - [ ] |
| STO-02 | Access logs are enabled and reviewed on a schedule. | Security / Compliance | - [ ] |
| STO-03 | Retention and deletion policies are defined and enforced. | Legal / Data | - [ ] |
| STO-04 | Backups are encrypted and recovery is tested periodically. | SRE / Platform | - [ ] |

## Labeling

| ID | Control | Owner | Status |
|---|---|---|---|
| LAB-01 | Labelers are authenticated and assigned only to authorized projects. | Data / ML | - [ ] |
| LAB-02 | Inter-annotator agreement is measured and below-threshold work is reviewed. | ML / Data | - [ ] |
| LAB-03 | Gold-standard sets are used to detect label drift or quality decay. | ML Engineer | - [ ] |
| LAB-04 | Labels are reviewed and approved before use in training. | ML / Data | - [ ] |

## Versioning and lineage

| ID | Control | Owner | Status |
|---|---|---|---|
| VER-01 | Datasets are versioned and immutable after creation. | ML Platform | - [ ] |
| VER-02 | Lineage is tracked from raw to processed to training datasets. | Data / ML | - [ ] |
| VER-03 | Training environments are reproducible with pinned dependencies. | ML Engineer | - [ ] |

## Access control

| ID | Control | Owner | Status |
|---|---|---|---|
| ACC-01 | Least-privilege access is enforced on data stores and pipelines. | Security / Platform | - [ ] |
| ACC-02 | Service accounts are scoped to required buckets, tables, or queues. | Platform Engineer | - [ ] |
| ACC-03 | Privileged access requires approval and multi-factor authentication. | Security | - [ ] |
| ACC-04 | Access is revoked promptly on role change or offboarding. | Identity Team | - [ ] |

## Privacy

| ID | Control | Owner | Status |
|---|---|---|---|
| PRI-01 | A privacy review is completed for personal or sensitive data. | Privacy / Legal | - [ ] |
| PRI-02 | Data minimization and purpose limitation are documented. | Legal / Data | - [ ] |
| PRI-03 | Anonymization or pseudonymization is applied where appropriate. | Data Engineer | - [ ] |
| PRI-04 | Consent and legal basis are documented and auditable. | Legal / Privacy | - [ ] |
