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
    ensure  => present,
    recurse => true,
    require => Package['nginx'],
    source  => "puppet:///modules/nginx/",
  }

}