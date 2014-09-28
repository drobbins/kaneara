.PHONY: kaneara quickdeploy

kaneara:
	ansible-playbook -i hosts kaneara.yml

quickdeploy:
	ansible-playbook -i hosts quickdeploy.yml
