<p align="center">
    <a href="https://github.com/open-turo/actions-python/releases/" alt="Release">
        <img src="https://img.shields.io/github/release/open-turo/actions-python" /></a>
    <a href="https://github.com/open-turo/actions-python/releases/" alt="Release date">
        <img src="https://img.shields.io/github/release-date/open-turo/actions-python" /></a>
    <a href="https://github.com/open-turo/actions-python/releases/" alt="Release status">
        <img src="https://github.com/open-turo/actions-python/actions/workflows/release.yaml/badge.svg " /></a>
    <a href="https://github.com/open-turo/actions-python/blob/main/LICENSE" alt="License">
        <img src="https://img.shields.io/github/license/open-turo/actions-python.svg" /></a>
    <a href="https://GitHub.com/open-turo/actions-python/commit/" alt="Last commit">
        <img src="https://img.shields.io/github/last-commit/open-turo/actions-s3-artifact" /></a>
    <a href="https://conventionalcommits.org" alt="Conventional commits">
        <img src="https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg" /></a>
</p>

# `open-turo/actions-python`

GitHub Action for `python` based repositories. It uses `pip` as package manager.

## Actions

### action: [`lint`](./lint)

Lint will run pre-commit linters against the consumer repository, optionally checking out to to the consumer repository.

See usage [here](./lint/README.md#usage).

Documentation is found [here](./lint/README.md).

### action: [`test`](./test)

Test will run tests in the consumer repository using [pytest](https://github.com/pytest-dev/pytest). This action will also check out the repository if `checkout-repo` is passed, as well as `pip install .[dev]` and `pip install .[test]` for dependencies.

See usage [here](./test/README.md#usage).

Documentation is found [here](./test/README.md).

### action: [`release`](./release)

Release will optionally checkout the consumer repository and attempt a [Semantic Release](https://semantic-release.gitbook.io/semantic-release/usage/configuration) using the root level configuration file (e.g. .releaserc.json) indicating branches and plugins to use to facilitate the release.

See usage [here](./release/README.md#usage).

Documentation is found [here](./release/README.md).

## Get Help

Each Action has a detailed README for how to use it as referenced above. Please review Issues, post new Issues against this repository as needed.

## Contributions

Please see [here](https://github.com/open-turo/contributions) for guidelines on how to contribute to this project.
