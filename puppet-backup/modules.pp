# Install Modules

# Sudo Module; enables management of...sudo!
exec { "sudomodule":
    command => "puppet module install saz-sudo",
    path => "/usr/bin:/usr/sbin:/bin:/usr/local/bin",
    creates => "/etc/puppet/modules/sudo/",
}

# MySQL Module
exec { "mysqlmodule":
    command => "puppet module install puppetlabs/mysql",
    path => "/usr/bin:/usr/sbin:/bin:/usr/local/bin",
    creates => "/etc/puppet/modules/sudo/",
}