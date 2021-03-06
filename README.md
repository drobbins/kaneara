# Kaneara

This repo contains [Ansible](http://www.ansible.com/home) playbooks and roles for a droplet named Kaneara. Also a vagrant file for development testing.

## Development

Ensure you have [Vagrant](http://vagrantup.com) and [Ansible](http://www.ansible.com/home), then:

```bash
git clone https://github.com/drobbins/kaneara.git && cd kaneara
vagrant up
```

### Useful Commands

These assume you are connected via ssh.

#### Restarting the TissueHub Meteor app

From withing a `tissuehub/.builds/build-<timestamp>/bundle` directory:

```bash
forever stopall
PORT=3000 MONGO_URL=mongodb://localhost/TissueHub MONGO_OPLOG_URL=mongodb://localhost/local ROOT_URL=https://tissuehub.org/ forever start main.js
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

Don't forget to copy over SSL keys.

### Quick Deploy

If the only goal is to update the TissueHub deployment to the latest `master` on TissueHub/TissueHub, consider using:

```
ansible-playbook -i hosts quickdeploy.yml
```

#### Quick Deploy to Vagrant

```shell
$ make quickdeploy-vagrant
```
