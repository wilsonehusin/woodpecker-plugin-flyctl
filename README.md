# Woodpecker Plugin Flyctl

Woodpecker plugin to deploy on Fly.io with `flyctl`.

## Usage

```yaml
steps:
  deploy:
    image: ghcr.io/wilsonehusin/woodpecker-plugin-flyctl
    # Make sure the FLY_API_TOKEN secret has been set for the pipeline.
    secrets: [ fly_api_token ]
    settings:
      # To pass other flags into the CLI, write what you would on terminal except the binary call.
      # For example, if you want to transform `flyctl deploy --image my/image:latest`,
      #   args: "deploy --image my/image:latest"
      # If nothing is provided, then the default execution is `flyctl deploy .`
      args: "deploy ."  # Same as blank.
```
