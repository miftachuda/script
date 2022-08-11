#!/bin/bash
port() {
    if hash netstat 2>/dev/null; then
        echo "getting port ${1} running"
        netstat -tulpn | grep :$1
    else
        apt-get net-tools
        netstat -tulpn | grep :$1
    fi
}
port $@