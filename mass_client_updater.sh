#!/bin/bash

for agent in `/var/ossec/bin/agent_control -lc` ; do /var/ossec/bin/agent_upgrade -a `echo $agent|awk -F' ' '{print $2}'|awk -F',' '{print $1}'` ; done
