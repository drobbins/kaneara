* Provision a CentOS 6.3 droplet.
* Log in, and install the EPEL and REMI repos

```
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm
```

* ``yum install puppet git``
* ``git clone https://github.com/drobbins/kaneara.git``