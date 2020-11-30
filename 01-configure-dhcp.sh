#!/usr/bin/env ansible-playbook
---
- hosts: localhost
  vars_files:
  - vars.yaml
  handlers:
  - name: restart dhcpd
    service:
      name: dhcpd
      state: restarted
  tasks:
  - import_tasks: tasks/configure_dhcp.yml
