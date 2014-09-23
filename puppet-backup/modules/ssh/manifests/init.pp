class ssh {

  service {'sshd':
    name      => 'sshd',
    ensure    => running,
    enable    => true,
    subscribe => File['sshd_config'],
  }

  file { 'sshd_config':
    path    => '/etc/ssh/sshd_config',
    ensure  => present,
    source  => "puppet:///modules/ssh/sshd_config",
  }

}