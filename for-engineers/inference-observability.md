# Inference Observability Checklist

Use this checklist to ensure ML inference is observable, resilient, and ready for incident response.

## Logging

| ID | Control | Owner | Status |
|---|---|---|---|
| LOG-01 | Request and response payloads are logged with trace IDs, without exposing PII. | Platform Engineer | - [ ] |
| LOG-02 | Model version, feature version, and input schema version are logged per prediction. | ML Engineer | - [ ] |
| LOG-03 | Logs are retained per policy and protected from tampering or deletion. | Security / SRE | - [ ] |

## Metrics

| ID | Control | Owner | Status |
|---|---|---|---|
| MET-01 | Latency, throughput, and error metrics are instrumented and dashboarded. | SRE / Platform | - [ ] |
| MET-02 | Business outcome metrics are tied to model decisions. | Product / ML | - [ ] |
| MET-03 | Resource utilization is monitored to detect abuse or cost spikes. | SRE / Platform | - [ ] |

## Drift detection

| ID | Control | Owner | Status |
|---|---|---|---|
| DRF-01 | Input feature drift is detected against the training baseline. | ML Engineer | - [ ] |
| DRF-02 | Output distribution drift is detected and alerted. | ML Engineer | - [ ] |
| DRF-03 | Concept drift triggers a retraining or review decision. | ML / Product | - [ ] |
| DRF-04 | Drift alerts are routed to owners with a defined response time. | ML / SRE | - [ ] |

## Abuse detection

| ID | Control | Owner | Status |
|---|---|---|---|
| ABU-01 | Rate limits and per-tenant quotas are enforced. | Platform / Security | - [ ] |
| ABU-02 | Anomalous query patterns are detected, such as model inversion probes. | Security / ML | - [ ] |
| ABU-03 | Abuse signals are shared with fraud or security operations teams. | Security | - [ ] |

## Incident response

| ID | Control | Owner | Status |
|---|---|---|---|
| INC-01 | Alerts include severity, runbook link, and ownership. | SRE | - [ ] |
| INC-02 | The model can be disabled or traffic shifted via feature flag or circuit breaker. | Engineering | - [ ] |
| INC-03 | The incident playbook covers rollback, communication, and evidence preservation. | SRE / Security | - [ ] |
| INC-04 | Post-incident reviews update controls and add regression tests. | Engineering Lead | - [ ] |
