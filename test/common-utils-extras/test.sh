#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

bins=(
    rg
    bat
    exa
    delta
    hyperfine
    fd-find
    zoxide
    neovim
    httpie
    fzf
    socat
    parallel
    gums
)

for bin in "${bins[@]}"; do
    check "$bin" command -v "$bin"
done

reportResults