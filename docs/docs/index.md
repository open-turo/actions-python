# Actions Python

<p align="center">
  <a href="https://open-turo.github.io/actions-python/"><img src="logo.svg" alt="Actions Python" width="700" height="100"></a>
</p>

<p align="center">
    <p align="center">
    GitHub Action for `python` based repositories. It uses `pip` as package manager.
    </p>
</p>

<p align="center">
    <a href="https://github.com/open-turo/actions-python/actions/workflows/ci.yaml">
        <img src="https://github.com/open-turo/actions-python/actions/workflows/ci.yaml/badge.svg" alt="CI">
    </a>
    <a href="https://github.com/open-turo/actions-python/actions/workflows/release.yaml">
        <img src="https://github.com/open-turo/actions-python/actions/workflows/release.yaml/badge.svg?branch=main" alt="Release">
    </a>
    <a href="https://github.com/open-turo/actions-python/releases">
        <img src="https://img.shields.io/github/v/release/open-turo/actions-python?include_prereleases" alt="Latest Version">
    </a>
</p>

---

**Documentation**: <a href="https://armand-sauzay.github.io/actions-python">https://open-turo.github.io/actions-python/</a>

**Source Code**: <a href="https://github.com/armand-sauzay/actions-python">https://github.com/open-turo/actions-python</a>

---

## Actions

### action: [`lint`](./lint)

Lint will run pre-commit linters against the consumer repository, optionally checking out to to the consumer repository.

See usage [here](./lint#usage).

Documentation is found [here](./lint).

### action: [`test`](./test)

Test will run tests in the consumer repository using [pytest](https://github.com/pytest-dev/pytest). This action will also check out the repository if `checkout-repo` is passed, as well as `pip install .[dev]` and `pip install .[test]` for dependencies.

See usage [here](./test#usage).

Documentation is found [here](./test).

### action: [`release`](./release)

Release will optionally checkout the consumer repository and attempt a [Semantic Release](https://semantic-release.gitbook.io/semantic-release/usage/configuration) using the root level configuration file (e.g. .releaserc.json) indicating branches and plugins to use to facilitate the release.

See usage [here](./release#usage).

Documentation is found [here](./release).

## Get Help

Each Action has a detailed README for how to use it as referenced above. Please review Issues, post new Issues against this repository as needed.
