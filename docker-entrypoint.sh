#!/bin/sh

set -u

mkdir -pv ~/.ssh

echo ${SSH_ID_RSA} | base64 -d > ~/.ssh/id_rsa
chmod 0400 ~/.ssh/id_rsa

SSH_LOCAL_PORT=${SSH_LOCAL_PORT:-10000}
SSH_TUNNEL_PORT=${SSH_TUNNEL_PORT:-22}

ssh -vvv -T -N -o StrictHostKeyChecking=false -o ServerAliveInterval=180 -L 0.0.0.0:${SSH_LOCAL_PORT}:${SSH_REMOTE_HOST}:${SSH_REMOTE_PORT} ${SSH_TUNNEL_HOST} -l ${SSH_USER} -p ${SSH_TUNNEL_PORT}
