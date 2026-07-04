# Model Release Gates

Use these gates to decide whether a new model version is ready for production. Each gate should have an owner and evidence before sign-off.

## Release gate checklist

| Gate | Criteria | Evidence | Status |
|---|---|---|---|
| Performance | Model meets predefined accuracy or error metrics on a holdout set. | Evaluation report | - [ ] |
| Fairness | Disparate impact and error rates are within thresholds across key slices. | Fairness audit | - [ ] |
| Security | Security assessment and threat model have no critical open items. | Security checklist | - [ ] |
| Latency | p99 latency is within the SLO under production-like load. | Load test results | - [ ] |
| Explainability | Required explanations are available and validated for key predictions. | Explanation samples | - [ ] |
| Sign-offs | Product, legal, security, and ML owners approve the release. | Sign-off record | - [ ] |

## Release process

1. Complete each gate in order or in parallel with independent owners.
2. Attach evidence to the release record.
3. If a gate fails, document the exception or reschedule the release.
4. After deployment, monitor the [inference observability checklist](../for-engineers/inference-observability.md) for 24-72 hours.
