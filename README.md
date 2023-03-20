# Docker image based on official node with lftp installed

Without entrypoint - usable for gitlab CI

## Pre-installed packages:

- lftp
- openssh-client (to allow git+ssh)

## Tags:

- pionl/node-with-lftp:8
- pionl/node-with-lftp:10
- pionl/node-with-lftp:12
- pionl/node-with-lftp:18
- pionl/node-with-lftp:latest
- pionl/node-with-lftp:8-alpine
- pionl/node-with-lftp:10-alpine
- pionl/node-with-lftp:12-alpine
- pionl/node-with-lftp:18-alpine
- pionl/node-with-lftp:12-alpine

```docker
FROM pionl/node-with-lftp:8
```

## Contribution

1. Change the `Dockerfile.template`
2. Edit `build.sh` if new version is added
3. Run `build.sh` to build images
4. Run `build.sh deploy` to build and push images
