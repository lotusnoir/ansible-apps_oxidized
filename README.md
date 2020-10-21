# Ansible Role: ansible-apps_osidized


## Description

[![Build Status](https://travis-ci.com/lotusnoir/ansible-apps_osidized.svg?branch=master)](https://travis-ci.com/lotusnoir/ansible-apps_osidized)[![License](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)](https://opensource.org/licenses/MIT)[![Ansible Role](https://img.shields.io/badge/ansible%20role-apps__osidized-blue)](https://galaxy.ansible.com/lotusnoir/ansible-apps_osidized/)[![GitHub tag](https://img.shields.io/badge/version-latest-blue)](https://github.com/lotusnoir/ansible-apps_osidized/tags)

Deploy [osidized](https://github.com/yyyar/osidized/releases) load balancer system using ansible.


## Role variables

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| `osidized_version` | 0.8.0 | osidized version |

## Examples

	---
	- hosts: apps_osidized
	  become: yes
	  become_method: sudo
	  gather_facts: yes
	  roles:
	    - role: ansible-apps_osidized
	  vars:
	    osidized_version: "0.8.0"
	    osidized_install_dir: /etc/osidized
        osidized_target_servers: "{{ groups['logs_servers'] }}"
        osidized_groups:
          - {name: syslog, port: 514, protocol: udp, targets: "{{ osidized_target_servers }}" }
          - {name: snmp, port: 162, protocol: udp, targets: "{{ osidized_target_servers }}" }
	  environment: 
	    http_proxy: "{{ http_proxy }}"
	    https_proxy: "{{ https_proxy }}"
	    no_proxy: "{{ no_proxy }}

## License

This project is licensed under MIT License. See [LICENSE](/LICENSE) for more details.
