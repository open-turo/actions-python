# GitHub Action Lint

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

| name               | description                                                                        | required | default |
| ------------------ | ---------------------------------------------------------------------------------- | -------- | ------- |
| `checkout-repo`    | <p>Perform checkout as first step of action</p>                                    | `false`  | `true`  |
| `github-token`     | <p>GitHub token that can checkout the repository. e.g. 'secrets.GITHUB_TOKEN'</p>  | `true`   | `""`    |
| `release-notes`    | <p>Whether to generate release notes for the pull request</p>                      | `false`  | `true`  |
| `s3-bucket-name`   | <p>S3 bucket name to cache node_modules to speed up dependency installation.</p>   | `false`  | `""`    |
| `s3-bucket-region` | <p>S3 bucket region to cache node_modules to speed up dependency installation.</p> | `false`  | `""`    |

## Runs

This action is an `composite` action.

## Lint Checks

This action runs the following lint checks:

- [action-pre-commit](https://github.com/open-turo/action-pre-commit)

## Notes

- By default, this action will perform actions/checkout as its first step.
- This expects that `.commitlintrc.yaml` will be present to enforce [`conventional-commit`](https://github.com/wagoid/commitlint-github-action).
