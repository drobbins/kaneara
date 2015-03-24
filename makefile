.PHONY: kaneara quickdeploy quickdeploy-vagrant

vagrant_inventory = .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory
vagrant_keyfile = ~/.vagrant.d/insecure_private_key

kaneara:
	ansible-playbook -i hosts kaneara.yml

quickdeploy:
	ansible-playbook -i hosts quickdeploy.yml

quickdeploy-vagrant:
	ansible-playbook quickdeploy.yml			\
		-i $(vagrant_inventory) 				\
		--private-key=$(vagrant_keyfile) 		\
		-u vagrant
