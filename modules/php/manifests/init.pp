class php {
  
  package { 'php-fpm':
    ensure => installed,
  }

  package { 'php-mysql':
    ensure => installed,
  }

  file { '/etc/php.ini':
    path    => '/etc/php.ini',
    ensure  => present,
    require => Package['php-fpm'],
    source  => "puppet:///modules/php/php.ini",
  }

}