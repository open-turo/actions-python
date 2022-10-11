#!/usr/bin/env bash

# This script should be executing in a pyenv

# Install poetry if it doesn't exist already
if [[ -n "$POETRY_VERSION" ]]; then
    pip install -U "poetry==${POETRY_VERSION}"
else
    pip install poetry
fi

# Configure the Poetry cache dir to exist in the per-Job RUNNER_TEMP directory
RUNNER_TEMP=${RUNNER_TEMP:-/tmp}
# Configure poetry to ignore the global config but not overwrite the local
export POETRY_CONFIG_DIR="${RUNNER_TEMP}/poetry-config"
echo "POETRY_CONFIG_DIR=${POETRY_CONFIG_DIR}" >> "$GITHUB_ENV"
mkdir -p "${POETRY_CONFIG_DIR}"

# Configure poetry's new config to use a separate cache dir
poetry config cache-dir "${RUNNER_TEMP}/poetry-cache"
mkdir -p "${RUNNER_TEMP}/poetry-cache"

# TODO: Make this debug output only
poetry config --list

# Install dependencies
# TODO: We may need to install some extras/groups here by default
poetry install
