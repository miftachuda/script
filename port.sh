#!/bin/bash
gnudate() {
    if hash netstat 2>/dev/null; then
        netstat -tulpn | grep :$1 
    else
        apt-get net-tools
        netstat -tulpn | grep :$1 
    fi
}