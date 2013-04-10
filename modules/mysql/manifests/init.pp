class mysql {
  
  package { 'mysql':
    ensure => installed,
  }

  package { 'mysql-server':
    ensure => installed,
  }

  service {'mysqld ':
    name      => 'mysqld',
    ensure    => running,
    enable    => true,
    subscribe => File['my.cnf'],
  }

  file { 'my.cnf':
    path    => '/etc/my.cnf',
    ensure  => present,
    require => Package['mysql'],
    source  => "puppet:///modules/mysql/my.cnf",
  }

}