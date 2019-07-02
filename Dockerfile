FROM centos:latest
COPY kubernetes.repo /etc/yum.repos.d/kubernetes.repo
RUN yum -y update && \
    yum install -y kubectl
