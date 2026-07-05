# Technical Due Diligence: ML Startup Security

This checklist helps investors and acquirers evaluate the security posture of an ML startup during technical due diligence. It is not a pass-or-fail audit. It is a structured way to find risks that can slow enterprise sales, trigger regulatory action, or destroy trust after an incident.

## Scope

Focus on six areas that are often underestimated in ML startups:

1. Data rights and provenance
2. Model reproducibility and experiment discipline
3. Deployment pipeline and release governance
4. Key-person and organizational risk
5. Inference and runtime security
6. Customer exposure and incident readiness

## Red-flag checklist

### 1. Data rights and provenance

| ID | Question | Red flag |
|---|---|---|
| DR-01 | Do they have clear rights to use every training dataset? | Verbal agreements, scraped data, or missing licenses |
| DR-02 | Is there a record of where each dataset came from and how it can be used? | No data inventory or source documentation |
| DR-03 | Have they reviewed customer contracts for data-use restrictions? | Customer data is reused across tenants without contracts allowing it |
| DR-04 | Is personal or regulated data handled with documented controls? | No privacy review, data retention policy, or deletion process |
| DR-05 | Can they delete a customer's data on request? | Deletion is manual, untested, or cannot be scoped to one customer |

### 2. Model reproducibility and experiment discipline

| ID | Question | Red flag |
|---|---|---|
| MR-01 | Can a past training run be reproduced from recorded code, data, and configuration? | Models are trained in local notebooks with no version control |
| MR-02 | Are model artifacts, hyperparameters, and metrics stored in a registry? | Models are passed around as email attachments or shared drives |
| MR-03 | Is there a separation between research experiments and production artifacts? | Any notebook can overwrite a production model |
| MR-04 | Are training datasets versioned and integrity-checked? | Dataset changes are not tracked or validated |

### 3. Deployment pipeline and release governance

| ID | Question | Red flag |
|---|---|---|
| DP-01 | Are deployments automated through a CI/CD pipeline? | Production deployments are done by hand from a laptop |
| DP-02 | Is there a staging or canary step before full rollout? | Changes go straight to all customers at once |
| DP-03 | Can a bad release be rolled back quickly? | Rollback requires manual database edits or redeploying from scratch |
| DP-04 | Are build artifacts signed or integrity-checked before deployment? | Anyone with cloud access can replace a running model |
| DP-05 | Is infrastructure defined as code and peer-reviewed? | Infrastructure changes are made directly in the console |

### 4. Key-person and organizational risk

| ID | Question | Red flag |
|---|---|---|
| KP-01 | Is access to production and secrets shared by only one person? | A single founder holds all credentials and cannot be reached |
| KP-02 | Is there documented knowledge of the architecture and data flows? | Security knowledge exists only in one engineer's head |
| KP-03 | Is there an onboarding and offboarding process for access? | Former employees still have access to code, cloud, or data |
| KP-04 | Is there a succession plan for critical security functions? | No plan if the security lead or platform lead leaves |

### 5. Inference and runtime security

| ID | Question | Red flag |
|---|---|---|
| IR-01 | Are serving endpoints authenticated and rate-limited? | Public endpoints with no authentication or quota controls |
| IR-02 | Are inputs validated and bounded before inference? | The API accepts arbitrary payloads with no schema enforcement |
| IR-03 | Is model output logged and monitored for abuse or drift? | No inference logs, anomaly detection, or abuse metrics |
| IR-04 | Is tenant data isolated in multi-tenant deployments? | Customers can access another customer's predictions or data |
| IR-05 | Are adversarial-input or robustness tests performed before release? | Model behavior under attack is never tested |

### 6. Customer exposure and incident readiness

| ID | Question | Red flag |
|---|---|---|
| CE-01 | Have they notified customers of past security incidents? | Hidden breaches or no incident response process |
| CE-02 | Is there a way to disable a compromised model quickly? | No kill switch or feature flag for model serving |
| CE-03 | Do customer contracts match actual security practices? | Contracts promise SOC 2 or encryption that is not implemented |
| CE-04 | Is there a communications plan for a model failure or breach? | No designated owner or template for customer notification |

## Scoring table

Use this table to score each area during diligence. Adjust the weighting based on the company's stage and target customers.

| Area | Weight | Score (1–5) | Weighted score | Notes |
|---|---|---|---|---|
| Data rights and provenance | 20% | | | |
| Model reproducibility and experiment discipline | 15% | | | |
| Deployment pipeline and release governance | 15% | | | |
| Key-person and organizational risk | 15% | | | |
| Inference and runtime security | 20% | | | |
| Customer exposure and incident readiness | 15% | | | |
| **Total** | **100%** | | | |

### Score guidance

| Score | Meaning |
|---|---|
| 5 | Mature, documented, tested, and independently verifiable |
| 4 | Repeatable process with minor gaps |
| 3 | Basic controls exist but are informal or inconsistently followed |
| 2 | Significant gaps that create real risk |
| 1 | Critical control missing or unknown |

## How to use the results

- Any item marked as a red flag deserves follow-up questions.
- A total weighted score below 2.5 suggests substantial pre-investment remediation work.
- A score between 2.5 and 3.5 is typical for an early-stage ML startup with room to improve before enterprise sales.
- A score above 3.5 indicates the company has made security and reliability a deliberate part of its engineering culture.
