# Jenkins Job Builder

This repository contains Dockerfile to build image with Jenkins Job Builder.

# Download

```bash
docker pull ozerov/jjb
```

# Usage

You need to pass a configuration file for Jenkins Job Builder in ini format
and a directory containing job templates inside a container.

Example:

```bash
docker run --rm \
  -v $PWD/jenkins.ini:/root/jenkins.ini \
  -v $PWD/jobs:/root/jobs \
  -e JENKINS_INI='/root/jenkins.ini' \
  -e JOBS_DIR='/root/jobs' \
  ozerov/jjb
```
