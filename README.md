# ansible-ubuntu-desktop

Provisioner for my profesional/personal Ubuntu 20.10 Desktop.

## Preparation

Activate your Python environment, and then:

```bash
make install-dev
```

## Customize

Remember to create a new set of group variables in group_vars.
You can copy the file in: `group_vars/laptops/xps15/vars.yml` and replace
their values.

## Launch

In order to Ansible find the python3-apt installation,
the Makefile downloads the .deb file and unpacks it into your Python environment.

A `playbook` script entry is set in the Pipfile:

```bash
ansible-playbook -K --extra-vars '@group_vars/laptops/xps15/vars.yml' playbook.yml
```
