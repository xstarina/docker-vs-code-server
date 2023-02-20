#/bin/bash

set -x

img="starina/vs-code-server"
ver="latest"

docker build --network host -t ${img}:${ver} . \
&& docker push ${img}:${ver}

