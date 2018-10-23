# Docker image based on official node with lftp installed

Without entrypoint - usable for gitlab CI

## Pre-installed packages:

- lftp

## Tags:

- pionl/node-with-lftp:8
- pionl/node-with-lftp:9
- pionl/node-with-lftp:10
- pionl/node-with-lftp:latest (node 9)
- pionl/node-with-lftp:8-alpine
- pionl/node-with-lftp:9-alpine
- pionl/node-with-lftp:10-alpine
- pionl/node-with-lftp:alpine (node alpine)

```docker
FROM pionl/node-with-lftp:8
```

## Contribution

1. Change the `Dockerfile.template`
2. Edit `build.sh` if new version is added
3. Run `build.sh` to build images
4. Run `build.sh deploy` to build and push images
