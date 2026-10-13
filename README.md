# gha-shared-workflows-sandbox

Throwaway repository used to exercise the reusable workflows of
[megawan/gha-shared-workflows](https://github.com/megawan/gha-shared-workflows) at `@v1`.

| Caller workflow | Reusable workflows exercised | Trigger |
| --- | --- | --- |
| `ci.yml` | `ci-node`, `ci-python`, `ci-go`, `ci-docker-build-push` (build only) | push, pull_request, dispatch |
| `security.yml` | `security-codeql` (2 jobs), `security-secret-scan`, `security-dependency-review` | push, pull_request, dispatch |
| `terraform.yml` | `terraform-validate`, `terraform-security`, `terraform-plan`, `terraform-apply` | push, pull_request (terraform/**) |
| `terraform-drift.yml` | `terraform-drift` | dispatch |
| `terraform-destroy.yml` | `terraform-destroy` | dispatch |
| `automation-pr-title.yml` | `automation-pr-title-lint` | pull_request_target |
| `automation-labeler.yml` | `automation-labeler` | pull_request_target |
| `automation-stale.yml` | `automation-stale` (dry run) | dispatch |
| `automation-sync-labels.yml` | `automation-sync-labels` | push (labels.yml), dispatch |
| `automation-actionlint.yml` | `automation-actionlint` | pull_request, push, dispatch |
