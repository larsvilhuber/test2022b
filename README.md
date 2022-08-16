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
  - if using SSH: open a terminal (on Mac or Windows), and type "`ssh (NETID)@cbsuecco08.biohpc.cornell.edu`" (where `cbsuecco08` happens to be the reserved node)
- open a terminal (if on VNC)
- `cd /workdir` because that's where you need to run Docker
- Create a directory with your netid: `mkdir (NETID)` 
- Change directory into the new directory:  `cd (NETID)`
- Type `pwd` to be sure: `pwd` should show something like `/workdir/(NETID)/`
- Clone the git repository: `git clone https://github.com/larsvilhuber/test2022b.git`
- Change directory into the newly created `test2022b` directory
- Type `pwd` to be sure: `pwd` should show something like `/workdir/(NETID)/test2022b`
- Run the command line above, replacing `docker` with `docker1`
