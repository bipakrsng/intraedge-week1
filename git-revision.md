// =====================================================
// Everyday Git — Detailed Notes
// =====================================================
//
// This document explains Git commands in two practical phases:
//
// 1) Standalone development (working alone)
// 2) Collaborative development (working in teams)
//
// These two phases cover ~90% of real-world Git usage.
//
// =====================================================
// 1) Standalone Commands (Working Alone)
// =====================================================
//
// These commands are used when:
// - You are the only developer
// - You are experimenting locally
// - You are learning Git fundamentals
//
// Focus: local repository, branches, commits, undoing changes
//
// -----------------------------------------------------
// git init
// -----------------------------------------------------
//
// Purpose:
// - Create a new Git repository
// - Initialize Git metadata (.git directory)
//
// Usage:
// git init
// git init <directory>
//
// Typical flow:
// git init
// git add .
// git commit -m "Initial commit"
//
// -----------------------------------------------------
// git status
// -----------------------------------------------------
//
// Purpose:
// - Show the current state of the working tree and index
//
// Shows:
// - Untracked files
// - Modified but unstaged files
// - Staged files ready to commit
//
// Usage:
// git status
//
// This is the most frequently used Git command.
//
// -----------------------------------------------------
// git diff
// -----------------------------------------------------
//
// Purpose:
// - Show differences between states
//
// Common forms:
// git diff            // working tree vs index
// git diff --staged   // index vs last commit
//
// Used to review changes before committing.
//
// -----------------------------------------------------
// git add
// -----------------------------------------------------
//
// Purpose:
// - Stage changes into the index
//
// Usage:
// git add file.txt
// git add .
// git add -p
//
// Key concept:
// - git add does NOT commit
// - It prepares the snapshot for commit
//
// -----------------------------------------------------
// git commit
// -----------------------------------------------------
//
// Purpose:
// - Record a snapshot of staged changes
//
// Usage:
// git commit -m "message"
// git commit -a
// git commit --amend
//
// Commits form the project history.
//
// -----------------------------------------------------
// git log
// -----------------------------------------------------
//
// Purpose:
// - View commit history
//
// Usage:
// git log
// git log --oneline
// git log --graph
//
// Helps understand what changed and when.
//
// -----------------------------------------------------
// git branch
// -----------------------------------------------------
//
// Purpose:
// - Create, list, delete branches
//
// Usage:
// git branch
// git branch feature
// git branch -d feature
//
// Branches allow parallel development.
//
// -----------------------------------------------------
// git switch
// -----------------------------------------------------
//
// Purpose:
// - Switch between branches
// - Create and switch branches
//
// Usage:
// git switch main
// git switch -c feature
//
// Cleaner replacement for older git checkout usage.
//
// -----------------------------------------------------
// git merge
// -----------------------------------------------------
//
// Purpose:
// - Combine branches
//
// Usage:
// git merge feature
//
// Used after finishing work on a branch.
//
// -----------------------------------------------------
// git rebase
// -----------------------------------------------------
//
// Purpose:
// - Reapply commits on top of another base
// - Keep history clean
//
// Usage:
// git rebase main
//
// Commonly used for topic branches before merging.
//
// -----------------------------------------------------
// git restore
// -----------------------------------------------------
//
// Purpose:
// - Undo changes in working tree or index
//
// Usage:
// git restore file.txt
// git restore --staged file.txt
//
// Safer replacement for checkout/reset in many cases.
//
// -----------------------------------------------------
// git rm / git mv
// -----------------------------------------------------
//
// Purpose:
// - Remove or rename tracked files
//
// Usage:
// git rm file.txt
// git mv old.txt new.txt
//
// Changes are staged automatically.
//
// =====================================================
// 2) Collaboration Commands (Working in Teams)
// =====================================================
//
// These commands are added when:
// - You work with remote repositories
// - You collaborate with others
// - You share or receive code
//
// Focus: remotes, syncing, sharing history
//
// -----------------------------------------------------
// git clone
// -----------------------------------------------------
//
// Purpose:
// - Copy a remote repository locally
//
// Usage:
// git clone <repo-url>
//
// Sets up:
// - Local repository
// - origin remote
// - Remote-tracking branches
//
// -----------------------------------------------------
// git remote
// -----------------------------------------------------
//
// Purpose:
// - Manage remote repositories
//
// Usage:
// git remote -v
// git remote add origin <url>
//
// Remotes represent other repositories.
//
// -----------------------------------------------------
// git fetch
// -----------------------------------------------------
//
// Purpose:
// - Download changes from remote
// - Do NOT modify working branch
//
// Usage:
// git fetch
//
// Safe command for inspecting upstream changes.
//
// -----------------------------------------------------
// git pull
// -----------------------------------------------------
//
// Purpose:
// - Fetch + merge in one step
//
// Usage:
// git pull
//
// Equivalent to:
// git fetch
// git merge
//
// -----------------------------------------------------
// git push
// -----------------------------------------------------
//
// Purpose:
// - Upload local commits to remote
//
// Usage:
// git push
// git push origin main
//
// Makes your work visible to others.
//
// -----------------------------------------------------
// git log (with remotes)
// -----------------------------------------------------
//
// Purpose:
// - Compare local and remote history
//
// Usage:
// git log HEAD..origin/main
//
// Helps review incoming or outgoing changes.
//
// -----------------------------------------------------
// git format-patch (advanced)
// -----------------------------------------------------
//
// Purpose:
// - Convert commits into patch files
//
// Used in:
// - Email-based workflows
// - Kernel-style development
//
// -----------------------------------------------------
// git request-pull (advanced)
// -----------------------------------------------------
//
// Purpose:
// - Ask upstream to pull your changes
//
// Used when you do not have push access.
//
// =====================================================
// Big Picture Summary
// =====================================================
//
// Standalone commands:
// - Manage local history
// - Create clean commits
// - Undo mistakes safely
//
// Collaboration commands:
// - Sync with others
// - Share commits
// - Integrate remote changes
//
// Learn Git in this order:
// 1) Standalone commands
// 2) Collaboration commands
// 3) Undo & recovery workflows
//
// Mastering these covers almost all everyday Git usage.
//
