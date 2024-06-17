#!/bin/bash

cat /etc/os-release
iptables --version

IPTABLES_CMD=$(command -v iptables)
if [ -x "/usr/sbin/iptables-legacy" ]; then
    IPTABLES_CMD="/usr/sbin/iptables-legacy"
fi

# Clean up existing iptables rules
$IPTABLES_CMD -t nat -F
$IPTABLES_CMD -F
