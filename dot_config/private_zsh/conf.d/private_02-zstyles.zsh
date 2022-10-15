#!/usr/bin/env zsh

zstyle :omz:plugins:ssh-agent agent-forwarding on

keys=("personal")
identities=()
for key in $keys; do
    key="${key}.pem"
    [ -f ${HOME}/.ssh/${key} ] && identities+=($key)
done

zstyle :omz:plugins:ssh-agent identities ${identities}
