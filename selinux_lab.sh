#!/bin/bash

echo "===== SELinux Practical ====="

echo "Current SELinux Mode"
# Command to show current mode
getenforce

echo
echo "SELinux Status"
# Command to show detailed status
sestatus

echo
echo "Changing to Permissive Mode"
# Command to set mode to Permissive (0)
setenforce 0

echo
echo "Current Mode"
# Command to verify current mode
getenforce

echo
echo "Changing to Enforcing Mode"
# Command to set mode to Enforcing (1)
setenforce 1

echo
echo "Current Mode"
# Command to verify current mode
getenforce

echo
echo "Configuration File"
cat /etc/selinux/config
