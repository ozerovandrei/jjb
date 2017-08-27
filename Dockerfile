FROM ubuntu:16.04
LABEL maintainer="flunk13@gmail.com"
LABEL version="1.0.0"
RUN apt update && \
    apt -y install python-pip
RUN pip install -UI pip
RUN pip install -UI pbr setuptools
RUN pip install -UI jenkins-job-builder
CMD [ "sh", "-c", "jenkins-jobs --ignore-cache --conf ${JENKINS_INI} -l debug update -r ${JOBS_DIR}" ]
