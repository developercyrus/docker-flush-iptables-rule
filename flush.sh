#!/bin/bash

cat /etc/os-release
iptables --version

# Ensure you're using the same version of iptables within your container that your host is using. If your host is using iptables-legacy, then your container should also use iptables-legacy.
IPTABLES_CMD=$(command -v iptables)
if [ -x "/usr/sbin/iptables-legacy" ]; then
    IPTABLES_CMD="/usr/sbin/iptables-legacy"
fi

# Clean up existing iptables rules
$IPTABLES_CMD -t nat -F
$IPTABLES_CMD -F
