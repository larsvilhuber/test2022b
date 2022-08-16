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

## To run this on BioHPC

Obtain an account on BioHPC, then add yourself to a reservation or make a reservation. See [instructions for Docker on BioHPC](https://biohpc.cornell.edu/lab/userguide.aspx?a=software&i=340#c)

Then:

- log on to the reserved node (via SSH -- preferred -- or VNC)
- open a terminal (if on VNC)
- `cd /workdir` because that's where you need to run Docker
- Create a directory with your netid: `mkdir (NETID)` 
- Change directory into the new directory:  `cd (NETID)`
- Clone the git repository: `git clone https://github.com/larsvilhuber/test2022b.git`
- Change directory into the newly created `test2022b` directory
- Run the command line above, replacing `docker` with `docker1`
