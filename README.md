andrewrothstein.restic
=========
![Build Status](https://github.com/andrewrothstein/ansible_restic/actions/workflows/build.yml/badge.svg)

Installs [Restic](https://restic.net/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.restic
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
