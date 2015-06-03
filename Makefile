all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""  This is installs KVM onto a debian based host usage read the README file
	@echo ""   1. make server       - run kvm server (then configure Auth)

server:
	ansible-playbook rancherosServer.yml

agent: url ip agentplay

url:
	@while [ -z "$$url" ]; do \
		read -r -p "Enter the url you wish to associate with this Rancher agent [url]: " url; echo "$$url">>url; cat url; \
	done ;

ip:
	@while [ -z "$$ip" ]; do \
		read -r -p "Enter the ip of the Rancher server you wish to associate with this Rancher agent this can be left blank [ip]: " ip; echo "$$ip">>ip; cat ip; \
	done ;

agentplay:
	ansible-playbook rancherosAgent.yml
