# GitHub Action Test

## Description

GitHub Action that tests a node based repository

## Usage

```yaml
jobs:
  test:
    steps:
      - name: Test
        uses: open-turo/actions-node/test@v1
        with:
          ## example value for github-token provided below
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Inputs

| parameter      | description                                                                | required | default |
| -------------- | -------------------------------------------------------------------------- | -------- | ------- |
| checkout-repo  | Perform checkout as first step of action                                   | `false`  | true    |
| github-token   | GitHub token that can checkout the repository. e.g. 'secrets.GITHUB_TOKEN' | `true`   |         |
| npm-auth-token | The Node Package Manager (npm) authentication token                        | `false`  |         |
| test-flags     | Flags and args for test command                                            | `false`  | ''      |

## Runs

This action is an `composite` action.

## Test

It will run:

```shell
yarn --pure-lockfile
yarn test
```

## Notes

- By default, this action will perform actions/checkout as its first step.
