# Class: ntp
#
# This module manages ntp
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
#
class ntp {
  
  package { 'ntp':
    ensure     => installed,
  }

  service { 'ntpd':
    ensure     => running,
    enable     => true,
    subscribe  => File['/etc/ntp.conf'],
  }
  
    file { '/etc/ntp.conf':
    ensure     => file,
    source     => 'puppet:///modules/ntp/ntp.conf',
  }
  
}
