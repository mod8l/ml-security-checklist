# Compliance Mapping

This document maps checklist items in this repository to common security and AI governance frameworks. Use it to show auditors, buyers, or boards how a specific control satisfies a broader requirement.

The mapping is intentionally high-level. You should supplement it with your own policies, evidence, and risk assessments.

## Mapped frameworks

- **SOC 2 Trust Services Criteria** — security, availability, and confidentiality controls commonly requested by enterprise customers.
- **ISO/IEC 27001:2022** — information security management system controls from Annex A.
- **NIST AI Risk Management Framework (AI RMF)** — govern, map, measure, and manage functions for AI-specific risk.

## Mapping table

| Checklist item | SOC 2 criteria | ISO 27001:2022 control | NIST AI RMF function |
|---|---|---|---|
| Maintain an inventory of production ML models and owners | CC6.1, CC7.2 | A.5.9, A.5.36 | Govern, Map |
| Enforce authentication and MFA on all production APIs and consoles | CC6.1, CC6.2 | A.5.17, A.8.5 | Govern, Manage |
| Encrypt data at rest and in transit | CC6.1, CC6.7 | A.8.24, A.8.25 | Govern, Manage |
| Store secrets in a secrets manager and rotate them | CC6.1, CC6.7 | A.5.18, A.8.5 | Govern, Manage |
| Apply least-privilege access to model artifacts and training data | CC6.2, CC6.3 | A.5.15, A.5.18 | Govern, Manage |
| Review access to production systems and data quarterly | CC6.2, CC6.3 | A.5.18, A.5.15 | Govern, Manage |
| Version control code, data references, and model artifacts | CC7.1, CC8.1 | A.8.1, A.8.9 | Map, Measure |
| Maintain immutable experiment and training logs | CC7.2, CC8.1 | A.8.9, A.8.15 | Map, Measure |
| Verify reproducibility of training runs and deployments | CC7.1, CC8.1 | A.8.1, A.8.32 | Measure, Manage |
| Scan third-party libraries and base images for vulnerabilities | CC7.1, CC8.1 | A.8.8, A.8.9 | Map, Measure |
| Track data provenance from source to deployment | CC6.1, CC7.2 | A.5.35, A.8.9 | Map, Measure |
| Validate and bound inputs before inference | CC7.1, CC7.2 | A.8.1, A.8.26 | Map, Manage |
| Enforce rate limits and per-tenant quotas on serving APIs | CC6.1, CC6.6 | A.8.15, A.8.16 | Manage |
| Monitor inference for drift, abuse, and anomalies | CC7.2, CC4.1 | A.5.24, A.8.16 | Measure, Manage |
| Test for adversarial inputs and model robustness | CC7.1, CC4.1 | A.5.24, A.8.26 | Measure, Manage |
| Conduct privacy reviews for models trained on personal data | CC6.1, CC2.3 | A.5.34, A.8.11 | Govern, Map |
| Test for training-data extraction and memorization | CC7.1, CC2.3 | A.5.34, A.8.11 | Measure, Manage |
| Document an incident response plan with model-specific playbooks | CC7.4, CC7.5 | A.5.24, A.5.25, A.5.26 | Govern, Manage |
| Maintain a risk register for ML-specific risks | CC3.2, CC3.3 | A.5.36, A.5.37 | Govern, Map |
| Perform access reviews and maintain audit logs | CC6.2, CC7.2 | A.8.15, A.8.16 | Govern, Measure |
| Define data retention and deletion policies | CC6.1, CC6.7 | A.5.34, A.8.1 | Govern, Manage |
| Run tabletop exercises and incident response drills | CC7.4, CC7.5 | A.5.24, A.5.30 | Measure, Manage |
| Establish vendor and third-party risk assessments | CC3.2, CC9.2 | A.5.19, A.5.20 | Govern, Map |

## Notes on using this mapping

- **SOC 2** criteria references use the AICPA Trust Services Criteria 2017 format. Your auditor may map these differently depending on your system description.
- **ISO 27001:2022** controls are from Annex A. Your organization may apply additional controls from the standard or exclude some based on your statement of applicability.
- **NIST AI RMF** functions are Govern, Map, Measure, and Manage. A single control can support multiple functions depending on how it is implemented.

## Mapping to repo checklists

| Repo file | Related controls in this mapping |
|---|---|
| [`checklists/ml-security-assessment.md`](checklists/ml-security-assessment.md) | Input validation, data poisoning, model inversion, membership inference, model theft, supply chain, extraction, skewing |
| [`checklists/production-readiness-review.md`](checklists/production-readiness-review.md) | Model inventory, reproducibility, deployment pipeline, monitoring, incident response |
| [`checklists/model-release-gates.md`](checklists/model-release-gates.md) | Reproducibility, artifact signing, staging, rollback |
| [`for-engineers/threat-modeling-guide.md`](for-engineers/threat-modeling-guide.md) | Input validation, access control, audit logging, least privilege |
| [`for-engineers/data-pipeline-security.md`](for-engineers/data-pipeline-security.md) | Data provenance, encryption, access control, third-party risk |
| [`for-engineers/model-integrity-checklist.md`](for-engineers/model-integrity-checklist.md) | Artifact signing, immutable logs, reproducibility |
| [`for-engineers/inference-observability.md`](for-engineers/inference-observability.md) | Rate limiting, input validation, drift and abuse monitoring |
| [`for-leaders/risk-register-template.md`](for-leaders/risk-register-template.md) | Risk register, governance, incident response |
| [`for-startups/startup-security-essentials.md`](for-startups/startup-security-essentials.md) | Authentication, encryption, secrets, access review, incident response, policies |
| [`for-investors/technical-due-diligence.md`](for-investors/technical-due-diligence.md) | Data rights, reproducibility, deployment, key-person risk, inference security, incident readiness |
