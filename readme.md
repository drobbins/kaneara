* Provision a CentOS 6.3 droplet.
* Log in, and install the EPEL and REMI repos

```
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm
```

* Install the Puppet Labs Repo (for the latest version of puppet): ``vi /etc/yum.repos.d/puppetlabs.repo``

```
[puppetlabs]
name=Puppet Labs Packages
baseurl=http://yum.puppetlabs.com/el/$releasever/products/$basearch/
enabled=1
gpgcheck=1
gpgkey=http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs
```

* ``yum install puppet-2.7.19 git``
* ``git clone https://github.com/drobbins/kaneara.git``
* ``cd kaneara``
* ``puppet apply modules.pp``
* ``puppet apply  --modulepath=`puppet --configprint modulepath`:`pwd`/modules kaneara.pp`` or ``make apply`` if you've run it before.

At some point you have to manually handle SSL keys, since they can't be safely handled in puppet.