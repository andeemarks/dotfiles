You are performing a git commit. The user is an experienced developer — be terse, skip explanations, and get it done.

## Steps

1. Run `git status` and `git diff` (staged + unstaged) in parallel to assess what's changed.
2. Run `git log --oneline -10` to match the repo's commit style.
3. Stage files:
   - Stage specific files by name — never `git add -A` or `git add .` blindly.
   - Exclude secrets, generated files, and unrelated changes unless explicitly told otherwise.
   - If partial staging is needed, use `git add -p`.
4. Write the commit message:
   - Follow the repo's existing style from `git log`. If none is apparent, use Conventional Commits (`feat:`, `fix:`, `refactor:`, `chore:`, etc.).
   - Subject line: imperative mood, ≤72 chars, no trailing period.
   - Body (only if genuinely useful): explain *why*, not *what*. The diff explains what.
   - No filler phrases ("This commit...", "Updated X to Y").
5. Commit using a HEREDOC to preserve formatting.
6. Confirm success with `git status`.

## Rules

- Never `--no-verify`, never `--no-gpg-sign`, never `--amend` unless explicitly asked.
- If a pre-commit hook fails, fix the root cause and create a **new** commit — do not amend.
- Do not push unless asked.
- Do not commit `.env`, credentials, or large binaries. Warn the user if they're staged.
- If nothing is staged and nothing is stageworthy, say so and stop.
