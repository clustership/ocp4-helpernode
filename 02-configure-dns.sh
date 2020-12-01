#!/usr/bin/env ansible-playbook
---
- hosts: localhost
  vars_files:
  - vars.yaml
  become: True
  handlers:
  - name: restart bind
    service:
      name: named
      state: restarted
#  pre_tasks:
#  - name: validate hostnames
#    import_tasks: tasks/validate_host_names.yaml

  tasks:
  - import_tasks: tasks/configure_dns.yml
