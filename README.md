# Ansible lab with Vagrant

A simple project for testing Ansible playbooks using Vagrant.
Starting with Ubuntu, will look to add other distro's for testing in the future.

This setup is coupled with the [Ansible playbooks repo](https://github.com/davidwmcneill/ansible-playbooks) that are being tested.\
Relative paths expect the two repositories to be checked out in the same parent folder

# Setup

Install Vagrant:
```al
brew reinstall --cask vagrant
```

Install Ansible:
TODO (pip)


[Vagrant host Manager](https://github.com/devopsgroup-io/vagrant-hostmanager) is a useful plugin for managing the ```hosts``` file on the guest and optionally the host.

Installation
```al
vagrant plugin install vagrant-hostmanager
```
Usage:
```al
vagrant hostmanager
```

Note the following configuration in the Vagrant file:
```al
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
```

# Basic usage

See Makefile for full details of setup; including the management of external roles and collections

Start up:
```al
vagrant up
```

Re-run a playbook:
```al
vagrant provision
```

ssh:
```al
vagrant ssh host-1
```

destroy:
```al
vagrant destroy
```

# Reference
- https://docs.ansible.com/ansible/2.4/guide_vagrant.html