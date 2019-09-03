FROM centos:latest
COPY kubernetes.repo /etc/yum.repos.d/kubernetes.repo
RUN yum -y update && \
    yum install -y kubectl && \
    curl -o helm.tgz https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz && \
    tar -zxvf helm.tgz && \
    mv linux-amd64/helm /usr/local/bin/helm
