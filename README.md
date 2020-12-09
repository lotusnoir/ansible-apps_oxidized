# Ansible Role: ansible-apps_oxidized


## Description

[![Build Status](https://travis-ci.com/lotusnoir/ansible-apps_oxidized.svg?branch=master)](https://travis-ci.com/lotusnoir/ansible-apps_oxidized)[![License](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)](https://opensource.org/licenses/MIT)[![Ansible Role](https://img.shields.io/badge/ansible%20role-apps__oxidized-blue)](https://galaxy.ansible.com/lotusnoir/ansible-apps_oxidized/)[![GitHub tag](https://img.shields.io/badge/version-latest-blue)](https://github.com/lotusnoir/ansible-apps_oxidized/tags)

Deploy [oxidized](https://github.com/yyyar/oxidized/releases) load balancer system using ansible.


## Role variables

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| `oxidized_version` | 0.8.0 | oxidized version |

## Examples

	---
	- hosts: apps_oxidized
	  become: yes
	  become_method: sudo
	  gather_facts: yes
	  roles:
	    - role: ansible-apps_oxidized
	  vars:
	    oxidized_version: "0.8.0"
	    oxidized_install_dir: /etc/oxidized
        oxidized_target_servers: "{{ groups['logs_servers'] }}"
        oxidized_groups:
          - {name: syslog, port: 514, protocol: udp, targets: "{{ oxidized_target_servers }}" }
          - {name: snmp, port: 162, protocol: udp, targets: "{{ oxidized_target_servers }}" }
	  environment: 
	    http_proxy: "{{ http_proxy }}"
	    https_proxy: "{{ https_proxy }}"
	    no_proxy: "{{ no_proxy }}

## License

This project is licensed under Apache License. See [LICENSE](/LICENSE) for more details.
