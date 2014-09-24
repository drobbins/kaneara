# Kaneara

This repo contains [Ansible](http://www.ansible.com/home) playbooks and roles for a droplet named Kaneara. Also a vagrant file for development testing.

## Development

Ensure you have [Vagrant](http://vagrantup.com) and [Ansible](http://www.ansible.com/home), then:

```bash
git clone https://github.com/drobbins/kaneara.git && cd kaneara
vagrant up
```

## Production

Using the included inventory file:

```
ansible-playbook -i hosts kaneara.yml
```

Alternately put `kaneara` somewhere in your `/etc/ansible/hosts` file:

```
kaneara ansible_ssh_host=198.199.67.43
```
