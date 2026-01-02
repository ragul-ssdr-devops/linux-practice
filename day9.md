# Day 9 – Git Recovery, Team Workflow & PR Readiness

## Objective
Learn how to undo mistakes safely in Git and follow a professional,
team-oriented workflow including pulls, `.gitignore`, and PR preparation.

---

## Concepts Learned

### Git Recovery (Undoing Mistakes)
- Git works across three layers:
  - Working Directory
  - Staging Area
  - Commit History
- `git reset` rewrites history and must be used carefully
- `git revert` safely undoes changes by creating a new commit
- Shared branches (`main`) must never have history rewritten

### Team Workflow
- Feature branches represent work under review
- `.gitignore` defines repo-wide ignore rules
- `git pull` = `git fetch` + `git merge`
- Fast-forward merges occur when no divergence exists
- Clean history is critical before opening a PR

---

## Commands Practiced

```bash
# Reset variants
git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1

# Safe undo
git revert HEAD

# Branching
git checkout -b sandbox/day9-undo
git checkout -b feature/day9-team-workflow
git branch -d <branch>
git branch -D <branch>

# Ignore rules
nano .gitignore

# Syncing
git fetch
git pull origin main

# History inspection
git log --oneline --graph --all

# Notes
Never use git reset on main after pushing
Always sync with main before opening a PR
Use sandbox branches for risky experiments
