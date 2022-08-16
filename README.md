# test2022b

## Testing Docker image locally

### Interactively

On a linux system with Docker installed:

```{sh}
chmod a+rx build.sh
docker run -it --rm -v "$(pwd):/project" -w /project rocker/verse:latest  /bin/bash
```

then execute `./build.sh`.

### Non-interactively

```{sh}
docker run -it --rm -v "$(pwd):/project" -w /project rocker/verse:latest  ./build.sh
```
