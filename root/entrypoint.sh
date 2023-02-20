#/bin/bash

UID=${UID:-1000}
GID=${GID:-100}

grep "${GID}:" /etc/group
[ $? -eq 0 ] || groupadd -g $GID vscode-grp 

GROUP_NAME=`grep "${GID}:" /etc/group | awk -F':' '{print $1}'`
useradd -m -u $UID -g ${GROUP_NAME} vscode-usr

chown -R vscode-usr:${GROUP_NAME} /vscode

su vscode-usr /app/code-server.sh
