#!/bin/bash

PARAM=$1 # The fist param of the script
#if [ -n "$PARAM" ]


PLAYBOOKS=("webservers.yml" "zabbix-server.yml"  "zabbix-agents.yml")


# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Exit on error and show commands
set -e
set -x


# Не всегда успевает подняться ssh на bastion. Делаем проверку
echo -e "${GREEN}Check bastion host...${NC}"

for playbook in "${PLAYBOOKS[@]}"; do
  echo -e "${GREEN}Executing ${playbook}...${NC}"
#  ansible-playbook playbooks/${playbook}
  #ssh -i ssh-keys/vm-cloud-diplom -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null pks@158.160.109.121 "cd ansible && ansible-playbook playbooks/zabbix-server.yml"
  #ssh ${SSH_KEYS} pks@${BASTION_WAN_IP} "cd ansible && ansible-playbook playbooks/${playbook}"
done


