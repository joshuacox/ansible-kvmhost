all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""  This is installs KVM onto a debian based host usage read the README file
	@echo ""   1. make kvm       - run kvm server (then configure Auth)

kvm:
	ansible-playbook kvmhost.yml

packer:
	ansible-playbook packer.yml
