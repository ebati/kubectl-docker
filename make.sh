#!/bin/bash

rm -rf v*

for i in 1.13 1.14 1.15 1.16 1.17 1.18
do
    vlatest=$(curl -sL "https://dl.k8s.io/release/stable-${i}.txt")
    mkdir ${vlatest}
    cat >${vlatest}/Dockerfile <<EOF
FROM alpine:3.11

RUN apk add --update ca-certificates && \\
    rm /var/cache/apk/* && \\
    wget https://storage.googleapis.com/kubernetes-release/release/${vlatest}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \\
    chmod +x /usr/local/bin/kubectl
EOF

    pushd ${vlatest}
    docker build . -t ebati/kubectl:${vlatest}
    docker push ebati/kubectl:${vlatest}
    popd
done
