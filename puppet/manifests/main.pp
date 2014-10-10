Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

class system-update {
  exec { 'apt-get update':
    command => 'apt-get update',
  }

  $sysPackages = [ "curl", "ruby-dev", "nodejs" ]
  package { $sysPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }
}

rvm_system_ruby {
  'ruby-2.0.0-p576':
    ensure      => 'present',
    default_use => true,
}

rvm::system_user { vagrant: ; }

include system-update
include rvm