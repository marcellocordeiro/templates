# Documentation: https://github.com/casey/just
# Cheat sheet: https://cheatography.com/linux-china/cheat-sheets/justfile/

# List all available scripts
[private]
default:
    @just --list --unsorted

# Init submodules. Warning: may discard changes
[group("configuration")]
init-submodules:
    git submodule update --init --recursive

# Lint the project
[group("maintenance")]
lint *ARGS:
    echo lint with "{{ ARGS }}"

# Format the project
[group("maintenance")]
format:
    echo format

# Lint and fix the project, then format
[group("maintenance")]
fix: (lint "--fix") format

# Update dependencies
[group("maintenance")]
update:
    echo update

# Build project
[group("development")]
build:
    echo build
