# GitHub Action Release

## Description

GitHub Action that publishes a new release.

## Configuration

### Step1: Set any [Semantic Release Configuration](https://github.com/semantic-release/semantic-release/blob/master/docs/usage/configuration.md#configuration) in your repository.

### Step2: [Add Secrets](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets) in your repository for the [Semantic Release Authentication](https://github.com/semantic-release/semantic-release/blob/master/docs/usage/ci-configuration.md#authentication) Environment Variables.

### Step3: Add a [Workflow File](https://help.github.com/en/articles/workflow-syntax-for-github-actions) to your repository to create custom automated processes.

## Usage

```yaml
steps:
  - name: Release
    uses: open-turo/actions-node/release@v1
    with:
      ## example value for github-token provided below
      github-token: ${{ secrets.GITHUB_TOKEN }}
      ## example value for npm-auth-token provided below
      npm-auth-token: ${{ secrets.NPM_AUTH_TOKEN }}
```

**IMPORTANT**: `GITHUB_TOKEN` does not have the required permissions to operate on protected branches.
If you are using this action for protected branches, replace `GITHUB_TOKEN` with [Personal Access Token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line). If using the `@semantic-release/git` plugin for protected branches, avoid persisting credentials as part of `actions/checkout@v3` by setting the parameter `persist-credentials: false`. This credential does not have the required permission to operate on protected branches.

## Inputs

| parameter      | description                                                                                                           | required | default |
| -------------- | --------------------------------------------------------------------------------------------------------------------- | -------- | ------- |
| checkout-repo  | Perform checkout as first step of action                                                                              | `false`  | true    |
| dry-run        | Whether to run semantic release in `dry-run` mode. It will override the `dryRun` attribute in your configuration file | `false`  | `false` |
| extra-plugins  | Extra plugins for pre-install. You can also specify specifying version range for the extra plugins if you prefer.     | `false`  |         |
| github-token   | GitHub token that can checkout the repository as well as create tags/releases against it. e.g. 'secrets.GITHUB_TOKEN' | `true`   |         |
| npm-auth-token | The Node Package Manager (npm) authentication token                                                                   | `false`  |         |

## Outputs

| parameter                 | description                         |
| ------------------------- | ----------------------------------- |
| new-release-published     | Whether a new release was published |
| new-release-version       | Version of the new release          |
| new-release-major-version | Major version of the new release    |

## Runs

This action is an `composite` action.

## Additional Examples

### extra-plugins example

The Action can be used with `extra-plugins` option to specify plugins which are not in the [default list of plugins of semantic release](https://semantic-release.gitbook.io/semantic-release/usage/plugins#default-plugins). When using this option, please make sure that these plugins are also mentioned in your [semantic release config's plugins](https://semantic-release.gitbook.io/semantic-release/usage/configuration#plugins) array.

For example, if you want to use `@semantic-release/git` and `@semantic-release/changelog` extra plugins, these must be added to `extra-plugins` in your actions file and `plugins` in your [release config file](https://semantic-release.gitbook.io/semantic-release/usage/configuration#configuration-file) as shown bellow:

Github Action Workflow:

```yaml
steps:
  - name: Release
    uses: open-turo/actions-node/release@v1
    with:
      # You can specify specifying version range for the extra plugins if you prefer.
      github-token: ${{ secrets.GITHUB_TOKEN }}
      extra-plugins: |
        @semantic-release/changelog@3.0.0
        @semantic-release/git
```

Similar to parameter `semantic_version`. _It is recommended to manually specify a version of semantic-release plugins to prevent errors caused._

Release Config:

```diff
  plugins: [
    .
+   "@semantic-release/changelog"
+   "@semantic-release/git",
  ]
```

### dry-run example

```yaml
jobs:
  build:
    steps:
      - name: Release
        uses: open-turo/actions-node/release@v1
        with:
          dry-run: true
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

### using output parameters example

```yaml
jobs:
  build:
    steps:
      - name: Release
        uses: open-turo/actions-node/release@v1
        id: semantic # Need an `id` for output variables
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
      - name: Do something when a new release published
        if: steps.semantic.outputs.new-release-published == 'true'
        run: |
          echo ${{ steps.semantic.outputs.new-release-version }}
          echo ${{ steps.semantic.outputs.new-release-major-version }}
```

## Notes

- By default, this action will perform actions/checkout as its first step.
