# Test

## Description

GitHub Action for running tests in a Python repository using [pytest](https://github.com/pytest-dev/pytest). This action will also check out the repository if `checkout-repo` is passed, as well as `pip install .[dev]` and `pip install .[test]` for dependencies.

## Usage

```yaml
jobs:
  test:
    steps:
      - name: Test
        uses: open-turo/actions-python/test@v1
        with:
          ## example value for github-token provided below
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Inputs

| parameter     | description                                                                                                       | required | default             |
| ------------- | ----------------------------------------------------------------------------------------------------------------- | -------- | ------------------- |
| checkout-repo | Perform checkout as first step of action                                                                          | `false`  | true                |
| github-token  | GitHub token that can checkout the repository. e.g. 'secrets.GITHUB_TOKEN'                                        | `true`   | ${{ github.token }} |
| pypi-token    | PyPI token that can checkout the repository as well as create tags/releases against it. e.g. 'secrets.PYPI_TOKEN' | `false`  |                     |
| test-flags    | Flags and args for test command                                                                                   | `false`  |                     |

## Runs

This action is an `composite` action.

## Test

It will run:

```shell
pytest ${test-flags}
```

## Notes

- By default, this action will perform actions/checkout as its first step.
