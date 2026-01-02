# Day 8 – Git Branching, Merging & Conflict Resolution

## Objective
Understand how Git is used in real team workflows by practicing branching,
parallel changes, merge conflicts, and history inspection.

---

## Concepts Learned
- Git branches are pointers to commits, not copies of code
- `HEAD` represents the currently checked-out branch
- Parallel work causes branch divergence
- Merge conflicts occur when Git cannot auto-resolve changes
- Merge commits record human conflict-resolution decisions
- Git history can be read using commit graphs

---

## Commands Practiced
```bash
git status
git branch
git checkout -b feature/day8-script-conflict
git checkout main
git add <file>
git commit -m "<message>"
git merge feature/day8-script-conflict
git log --oneline --graph --all
git branch -d feature/day8-script-conflict
git push origin main


##Exact CHanges Timeline

git status
git branch >> Represents current branch : main
git checkout -b <branch_name>
git branch >> Now represents New branch Name
git nano scripts/test/test.md >>made changes (1)
git add scripts/test/test.md
gti commit -m "Feat : Update test.md Feature branch"
git checkout main 
git nano scripts/test/test.md >>made changes (1+2)
git add scripts/test/test.md
git commit -m "Feat : Update test.md main branch"
git merge <feature_branch_name>
Conflict Seen 
Conflict markers seen in the file 
git nano scripts/test/test.md >>made changes (1+2+3)
git add scripts/test/test.md
git commit -m "Merge : Update test.md main + feature branch"
git branch -d <feature_branch_name>
git push origin main 
