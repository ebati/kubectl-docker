FROM alpine:3.9

ENV KUBE_VERSION="v1.14.1"

RUN apk add --update ca-certificates && \
    rm /var/cache/apk/* && \
    wget https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl
