# Ansible Role: ansible-apps_oxidized

## Description

[![Build Status](https://travis-ci.com/lotusnoir/ansible-apps_oxidized.svg?branch=master?style=flat)](https://travis-ci.com/lotusnoir/ansible-apps_oxidized)
[![License](https://img.shields.io/badge/license-Apache--2.0-brightgreen?style=flat)](https://opensource.org/licenses/Apache-2.0)
[![Ansible Role](https://img.shields.io/badge/galaxy-apps_oxidized-purple?style=flat)](https://galaxy.ansible.com/lotusnoir/apps_oxidized)
![GitHub repo size](https://img.shields.io/github/repo-size/lotusnoir/ansible-apps_oxidized?color=orange&style=flat)
![Ansible Quality Score](https://img.shields.io/ansible/quality/52300)
[![downloads](https://img.shields.io/ansible/role/d/52300)](https://galaxy.ansible.com/lotusnoir/apps_oxidized)
[![Version](https://img.shields.io/github/release/lotusnoir/apps_oxidized.svg)](https://github.com/lotusnoir/ansible-apps_oxidized/releases/)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_oxidized&metric=alert_status)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_oxidized) 
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_oxidized&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_oxidized)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_oxidized&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_oxidized)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_oxidized&metric=security_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_oxidized)


Deploy [oxidized](https://github.com/ytti/oxidized) a network configuration backup toole.

## Role variables

| Name                    | Default Value     | Description                        |
| ----------------------- | ----------------- | -----------------------------------|
| `oxidized_version`      | 0.28.0            | oxidized version                   |
| `oxidized_user`         | oxidized          | oxidized system user               |
| `oxidized_group`        | oxidized          | oxidized system group              |
| `oxidized_passwd`       | oxidized          | oxidized system user password      |
| `oxidized_config_dir`   | /home/oxidized    | config directory                   |
| `oxidized_storage_dir`  | /data/oxidized    | location for config files backup   |
| `oxidized_log_dir`      | /var/log/oxidized | log file location                  |
| `oxidized_log_debug`    | false             | debug mode                         |
| `oxidized_web_listen`   | 0.0.0.0           | web listen port                    |
| `oxidized_web_port`     | 8888              | web listen port                    |
| `oxidized_config_files` |                   | location of the extra config files |
| `oxidized_model_files`  |                   | location of the model files        |

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

## Monitoring

Monitoring this tool can be done with a [prometheus exporter](https://github.com/lotusnoir/ansible-apps_oxidized_exporter). You will get the status for each backup.


## License

This project is licensed under Apache License. See [LICENSE](/LICENSE) for more details.
