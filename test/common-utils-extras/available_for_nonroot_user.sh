#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

check "user is vscode" grep vscode <(whoami)

bins=(
    rg
    bat
    hyperfine
    fd
    zoxide
    nvim
    http
    fzf
    socat
    parallel
    gum
    yq
    cloc
)

for bin in "${bins[@]}"; do
    check "$bin" command -v "$bin"
done

reportResults
