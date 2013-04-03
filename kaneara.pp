package { "zsh":
  ensure => installed,
}

user { "robbinsd":
  ensure => present,
  uid => '507',
  gid => 'admin',
  shell => '/bin/zsh',
  home => '/home/robbinsd',
  managehome => true,
}

ssh_authorized_key { "robbinsdkey"
    ensure => present,
    key => AAAAB3NzaC1yc2EAAAADAQABAAABAQClocEEFifAjvZlkkdgvc+p0QlmjQ3NmaVFvbT0rC1AebBndmmtVexAZC+UpmaWIcHuoXqjgzGufk3l2fFPkEZAp8nvKYTa9WOik4vLALYz6g+KTjXWc4E74tRuYcOVVfg1yJqghmT7j+gzAVksgVTViMoteEWPANUo5ijC428bfLAvhEw/iaak8VVJVzmRDd/VPPCV8HEtR8no5XOK1xtXCEFpjH7oLp/gpbBXGEUqFQWMlTp7xKq0pTdzyf9WysSV4ZtlNPX9pJkHau6aTKtHRxveLHER5z5IkqQip+HWupHX+jjR4SPe/p0ChllRqEAyxYtq0TRdnqPXo6ndu/4p,
    user => "robbinsd",
}