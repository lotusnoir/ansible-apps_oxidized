# ansible-apps_oxidized

[![Galaxy Role](https://img.shields.io/badge/galaxy-apps_oxidized-purple?style=flat)](https://galaxy.ansible.com/lotusnoir/apps_oxidized)
[![Version](https://img.shields.io/github/release/lotusnoir/ansible-apps_oxidized.svg)](https://github.com/lotusnoir/ansible-apps_oxidized/releases/latest)
[![GitHub repo size](https://img.shields.io/github/repo-size/lotusnoir/ansible-apps_oxidized?color=orange&style=flat)](https://galaxy.ansible.com/lotusnoir/apps_oxidized)
[![downloads](https://img.shields.io/ansible/role/d/52300)](https://galaxy.ansible.com/lotusnoir/apps_oxidized)
[![Ansible Quality Score](https://img.shields.io/ansible/quality/52300)](https://galaxy.ansible.com/lotusnoir/apps_oxidized)
[![License](https://img.shields.io/badge/license-Apache--2.0-brightgreen?style=flat)](https://opensource.org/licenses/Apache-2.0)

## Description

Deploy [oxidized](https://github.com/ytti/oxidized) a network configuration backup tool.
## Requirements

none

## Role variables

See [variables](/defaults/main.yml) for more details.

## Examples

        ---
        - hosts: apps_oxidized
          become: true
          become_method: sudo
          gather_facts: true
          roles:
            - role: ansible-apps_oxidized


## License

This project is licensed under Apache License. See [LICENSE](/LICENSE) for more details.

## Author Information

- [Philippe LEAL](https://github.com/lotusnoir)
