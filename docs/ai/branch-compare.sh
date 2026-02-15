function branch_compare() {
  local main_branch=${1:-"main"}
  local current_branch=${2:-"HEAD"}

  # Check if main branch exists, otherwise try master
  if ! git show-ref --verify --quiet refs/heads/main; then
      if git show-ref --verify --quiet refs/heads/master; then
          main_branch="master"
      else
          echo "Error: Neither 'main' nor 'master' branch found"
          return 1
      fi
  fi

  local pr_prompt="#codebase
git log --oneline:
\`\`\`gitlog
$(git log --oneline ${main_branch}..${current_branch})
\`\`\`

git diff:
\`\`\`diff
$(git diff ${main_branch}..${current_branch})
\`\`\`"

  echo "$pr_prompt"
}