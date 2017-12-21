FROM alpine:latest
LABEL maintainer="andrei.ozerov92@gmail.com"
LABEL version="1.0.0"

RUN apk update && apk upgrade && \
    apk add --no-cache \
    python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install -UI \
    pip \
    pbr \
    setuptools \
    jenkins-job-builder && \
    rm -r /root/.cache

CMD [ "sh", "-c", "jenkins-jobs --ignore-cache --conf ${JENKINS_INI} -l debug update --workers ${WORKERS} -r ${JOBS_DIR}" ]
