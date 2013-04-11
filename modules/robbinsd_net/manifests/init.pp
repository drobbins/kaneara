class robbinsd_net {

  include nginx

  file { 'robbinsd.net.conf':
    path    => '/etc/nginx/conf.d/robbinsd.net.conf',
    ensure  => present,
    recurse => true,
    require => [Package['nginx'], File['nginx.conf']],
    notify  => Service['nginx'],
    source  => "puppet:///modules/robbinsd_net/robbinsd.net.conf",
  }

  file { 'robbinsd.net.ssl.conf':
    path    => '/etc/nginx/conf.d/robbinsd.net.ssl.conf',
    ensure  => present,
    recurse => true,
    require => [Package['nginx'], File['nginx.conf']],
    notify  => Service['nginx'],
    source  => "puppet:///modules/robbinsd_net/robbinsd.net.ssl.conf",
  }

}