# Production Readiness Review Checklist

Use this checklist before promoting an ML service or model to production. It covers reliability, observability, and operational controls.

## How to use this checklist

1. Review each section with the owning team.
2. Mark items complete in the status column.
3. Capture the overall score in the [PRR scorecard](../worksheets/prr-scorecard.md).

## Service level objectives

| ID | Control | Owner | Status |
|---|---|---|---|
| SLO-01 | Latency p99 target is defined and tested under expected load. | SRE / ML | - [ ] |
| SLO-02 | Throughput target is defined and load-tested. | SRE / Platform | - [ ] |
| SLO-03 | Availability target and error budget are documented and tracked. | SRE | - [ ] |
| SLO-04 | Upstream dependency SLOs are known and aligned. | Engineering Lead | - [ ] |

## Rollback and deployment safety

| ID | Control | Owner | Status |
|---|---|---|---|
| ROL-01 | Automated rollback is available and tested at least once per quarter. | SRE | - [ ] |
| ROL-02 | The previous model version is kept warm for immediate switchback. | ML Platform | - [ ] |
| ROL-03 | Canary or shadow launch gates are required before full rollout. | SRE / ML | - [ ] |
| ROL-04 | Feature flags or circuit breakers can disable the model in production. | Engineering | - [ ] |

## Feature stores

| ID | Control | Owner | Status |
|---|---|---|---|
| FEA-01 | Online and offline feature parity is validated before launch. | ML Engineer | - [ ] |
| FEA-02 | Feature definitions are versioned and treated as immutable. | ML Platform | - [ ] |
| FEA-03 | Feature freshness SLO is defined and monitored. | Data / ML | - [ ] |
| FEA-04 | Feature backfill process is documented and audited. | Data Engineer | - [ ] |

## Model registry

| ID | Control | Owner | Status |
|---|---|---|---|
| REG-01 | Model versions, artifacts, and metadata are registered. | ML Engineer | - [ ] |
| REG-02 | Stage transitions require approval and are logged. | ML / Platform | - [ ] |
| REG-03 | Model signatures, dependencies, and runtime requirements are recorded. | ML Engineer | - [ ] |
| REG-04 | Retired models are archived or deleted per retention policy. | ML / Legal | - [ ] |

## Observability

| ID | Control | Owner | Status |
|---|---|---|---|
| OBS-01 | Request and response logs include trace IDs and model version. | Platform / SRE | - [ ] |
| OBS-02 | Dashboards cover latency, throughput, errors, and business metrics. | SRE / ML | - [ ] |
| OBS-03 | Drift detection is configured for inputs and outputs. | ML Engineer | - [ ] |
| OBS-04 | Alerting rules link to runbooks and have clear severity. | SRE | - [ ] |

## Cost and efficiency

| ID | Control | Owner | Status |
|---|---|---|---|
| CST-01 | Per-inference cost is estimated and within budget. | Engineering / Finance | - [ ] |
| CST-02 | CPU, GPU, and memory resources are right-sized. | Platform Engineer | - [ ] |
| CST-03 | Autoscaling policies are defined and load-tested. | SRE / Platform | - [ ] |
| CST-04 | Idle development or staging environments are scaled down. | Platform Engineer | - [ ] |

## Runbooks and documentation

| ID | Control | Owner | Status |
|---|---|---|---|
| RUN-01 | On-call runbooks exist for rollback and incident response. | SRE | - [ ] |
| RUN-02 | A blameless postmortem template and review process are defined. | Engineering Lead | - [ ] |
| RUN-03 | Contact list and escalation path are documented and current. | SRE / Manager | - [ ] |
