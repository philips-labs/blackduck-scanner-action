# Black Dock Scanner action

A Github action for running Black Duck analysis on your codebase inside a Docker container.

## Required parameters

| Parameter     | Description                    |
| ------------- | :----------------------------- |
| projectName   | Your project name in BlackDuck |
| versionPrefix | Version prefix                 |
| token         | Black Duck token token         |
| url           | Black Duck server url          |

## Sample Configuration

To prevent your token from showing in the runner's output, it is advised to store the token configuration inside of a github secret variable.

The listing below uses the secret `BLACKDUCK_TOKEN` from your project's configuration.

```yml
blackduck:
  name: BlackDuck
  runs-on: self-hosted
  steps:
    - uses: philips-labs/blackduck-scanner-action@v1
      with:
        token: ${{ secrets.BLACKDUCK_TOKEN }}
        projectName: Your project name
        versionPrefix: You version prefix
        url: https://your.black.duck.swamp/
```
