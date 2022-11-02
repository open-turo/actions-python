# GitHub Action Poetry Install

## Description

GitHub Action that installs Poetry in a cacheable safe way.

- Installs Poetry using the default available `pip` command.
- Sets the Poetry configuration to be `$RUNNER_TEMP/poetry-config` so there is
  no conflicts with other Poetry installations.
- Sets the Poetry cache directory to `$RUNNER_TEMP/poetry-cache` so it can be
  cached if desired between runs.

## Usage

```yaml
jobs:
  build:
    steps:
      - name: Poetry install
        uses: open-turo/actions-python/poetry-install@v1
```

## Inputs

This action takes no inputs.

## Runs

This action is an `composite` action.
