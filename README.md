# Jenkins Job Builder

This repository contains Dockerfile to build an image with the Jenkins Job Builder.

## Download

```bash
docker pull ozerov/jjb
```

## Usage

You need to pass several parameters to a container:

- a configuration file for the Jenkins Job Builder in ini format
- workers count for the Jenkins Job Builder
- a directory containing job templates

Example:

```bash
docker run --rm \
  -v $PWD/jenkins.ini:/root/jenkins.ini \
  -v $PWD/jobs:/root/jobs \
  -e JENKINS_INI='/root/jenkins.ini' \
  -e WORKERS='8' \
  -e JOBS_DIR='/root/jobs' \
  ozerov/jjb
```
