FROM alpine:3.11

RUN apk add --update ca-certificates && \
    rm /var/cache/apk/* && \
    wget https://storage.googleapis.com/kubernetes-release/release/v1.16.8/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl
