#!/bin/zsh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
PATCH_FILE="${SCRIPT_DIR}/jekyll_local_patch.rb"

export PATH="/opt/homebrew/opt/ruby@3.3/bin:${PATH}"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export BUNDLE_PATH="${REPO_ROOT}/vendor/bundle"
export BUNDLE_USER_HOME="${REPO_ROOT}/.bundle-user-home"

if [[ -n "${RUBYOPT:-}" ]]; then
  export RUBYOPT="-r${PATCH_FILE} ${RUBYOPT}"
else
  export RUBYOPT="-r${PATCH_FILE}"
fi

cd "${REPO_ROOT}"

if ! bundle check >/dev/null 2>&1; then
  bundle install
fi

bundle exec jekyll "$@"
