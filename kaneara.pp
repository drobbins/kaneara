package { "zsh":
  ensure => installed,
}

user { "robbinsd":
  ensure => present,
  uid => '507',
  gid => 'admin',
  shell => '/bin/zsh',
  home => '/home/dave',
  managehome => true,
}