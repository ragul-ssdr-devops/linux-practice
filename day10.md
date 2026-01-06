# Day 10 – GitHub Pull Requests, Reviews & CI Expectations

## Objective
Understand and practice the real-world GitHub workflow using Pull Requests,
including branch-based development, PR descriptions, merge strategies,
and branch cleanup.

---

## Concepts Learned

### Pull Requests (PRs)
- PRs are used to propose changes to `main`
- They provide a space for:
  - Code review
  - CI checks
  - Risk evaluation
- Direct pushes to `main` are avoided in professional teams

### PR Hygiene
- Feature branches represent work under review
- Changes should be:
  - Small
  - Focused
  - Easy to review
- PR descriptions must clearly explain:
  - What changed
  - Why it changed
  - Scope and risk

### CI Expectations
- CI pipelines typically run on PRs
- PRs can be blocked if:
  - Tests fail
  - Linting fails
  - Required checks are not met
- DevOps teams treat PRs as risk gates

### Merge Strategies
- **Merge commit**: preserves full history (used here)
- Squash merge: combines commits into one
- Rebase merge: linear history (used carefully)

---

## Commands Practiced

```bash
git checkout -b feature/day10-pr-workflow
git add <file>
git commit -m "test: update test script for PR workflow demo"
git push -u origin feature/day10-pr-workflow

# After PR merge
git checkout main
git pull origin main
git branch -d feature/day10-pr-workflow

