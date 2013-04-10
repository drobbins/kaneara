class php {
  
  package { 'php-fpm':
    ensure => installed,
  }

  package { 'php-mysql':
    ensure => installed,
  }

  service { 'php-fpm':
    ensure => running,
    require => [File['/etc/php.ini'], File['/etc/php-fpm.d/www.conf']],
  }

  file { '/etc/php.ini':
    path    => '/etc/php.ini',
    ensure  => present,
    require => Package['php-fpm'],
    source  => "puppet:///modules/php/php.ini",
  }

  file { '/etc/php-fpm.d/www.conf':
    path    => '/etc/php-fpm.d/www.conf',
    ensure  => present,
    require => Package['php-fpm'],
    source  => "puppet:///modules/php/www.conf",
  }

}