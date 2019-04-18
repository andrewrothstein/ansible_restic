andrewrothstein.restic
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-restic.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-restic)

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
