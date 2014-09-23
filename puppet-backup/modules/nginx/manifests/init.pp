class nginx {
  
  package { 'nginx':
    ensure => installed,
  }

  service {'nginx':
    name      => 'nginx',
    ensure    => running,
    enable    => true,
    subscribe => File['nginx.conf'],
  }

  file { 'nginx.conf':
    path    => '/etc/nginx/',
    force   => true,
    purge   => true,
    ensure  => present,
    recurse => true,
    require => Package['nginx'],
    source  => "puppet:///modules/nginx/",
  }

  # Prevent purge from deleting my SSL key
  file { 'ssl.key':
    ensure => present,
    path => '/etc/nginx/ssl.key'
  }

}