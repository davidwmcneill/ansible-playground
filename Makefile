SHELL := /bin/bash

OS=r

role_update:
	../ansible-playbooks/extensions/setup/role_update.sh

collection_update:
	../ansible-playbooks/extensions/setup/collection_update.sh

provision:
	cd vagrant && vagrant provision

ssh:
	cd vagrant && vagrant ssh

up:
	cd vagrant && vagrant up

destroy:
	cd vagrant && vagrant destroy