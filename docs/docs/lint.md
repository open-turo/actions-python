# Lint

## Description

GitHub Action that lints a python based repository

## Usage

```yaml
jobs:
  build:
    steps:
      - name: Lint
        uses: open-turo/actions-python/lint@v1
        with:
          ## example value for github-token provided below
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Inputs

| parameter     | description                                                                                                       | required | default             |
| ------------- | ----------------------------------------------------------------------------------------------------------------- | -------- | ------------------- |
| checkout-repo | Perform checkout as first step of action                                                                          | `false`  | true                |
| pypi-token    | PyPI token that can checkout the repository as well as create tags/releases against it. e.g. 'secrets.PYPI_TOKEN' | `false`  |                     |
| github-token  | GitHub token that can checkout the repository. e.g. 'secrets.GITHUB_TOKEN'                                        | `true`   | ${{ github.token }} |

## Runs

This action is an `composite` action.

## Lint Checks

This action runs pre-commit.

## Notes

- By default, this action will perform actions/checkout as its first step.
- This expects that `.commitlintrc.yaml` will be present to enforce [`conventional-commit`](https://github.com/wagoid/commitlint-github-action).
