# Ansible Role: ansible-apps_oxidized

## Description

[![Build Status](https://travis-ci.com/lotusnoir/ansible-apps_oxidized.svg?branch=master)](https://travis-ci.com/lotusnoir/ansible-apps_oxidized)[![License](https://img.shields.io/badge/license-Apache--2.0-brightgreen)](https://opensource.org/licenses/Apache-2.0)[![Ansible Role](https://img.shields.io/badge/ansible%20role-apps__oxidized-blue)](https://galaxy.ansible.com/lotusnoir/ansible-apps_oxidized/)[![GitHub tag](https://img.shields.io/badge/version-latest-blue)](https://github.com/lotusnoir/ansible-apps_oxidized/tags)

Deploy [oxidized](https://github.com/ytti/oxidized) a network configuration backup toole.

## Role variables

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| `oxidized_version` | 0.28.0 | oxidized version |
| `oxidized_user` | oxidized | oxidized system user |
| `oxidized_group` | oxidized | oxidized system group |
| `oxidized_passwd` | oxidized | oxidized system user password|
| `oxidized_config_dir` | /home/oxidized | config directory |
| `oxidized_storage_dir` | /data/oxidized | location for config files backup |
| `oxidized_log_dir` | /var/log/oxidized | log file location |
| `oxidized_log_debug` | false | debug mode |
| `oxidized_web_listen` | 0.0.0.0 | web listen port|
| `oxidized_web_port` | 8888 | web listen port |
| `oxidized_config_files` |  | location of the extra config files|
| `oxidized_model_files` |  | location of the model files|

## Examples

	---
	- hosts: apps_oxidized
	  become: yes
	  become_method: sudo
	  gather_facts: yes
	  roles:
	    - role: ansible-apps_oxidized
	  environment: 
	    http_proxy: "{{ http_proxy }}"
	    https_proxy: "{{ https_proxy }}"
	    no_proxy: "{{ no_proxy }}

## License

This project is licensed under Apache License. See [LICENSE](/LICENSE) for more details.
