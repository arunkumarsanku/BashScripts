#!/bin/bash

### This script prints systeminfo ###
echo "Welcome to bashscript."
echo

### checking system uptime ###
echo "#######################################"
echo "The uptime of system is: "
uptime
echo

### checking used memory ###
echo "#######################################"
echo "Memory utilization is:" 
free -m
echo 

### checking disk space ###
echo "#######################################"

echo "Disk utilization"
df -h
