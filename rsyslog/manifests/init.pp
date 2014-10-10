# Class: rsyslog
#
# This module manages rsyslog
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
#
class rsyslog {
  
    package { 'rsyslog':
      ensure   => installed,
    }
    
    service { 'syslogd':
      ensure   => stopped,
      enable   => false,
    }
    
    service {'rsyslog':
      ensure   => running,
      enable   => true,
      require  => Service['syslogd'],
      subscribe   => File['puppet:///modules/rsyslog/rsyslog.conf'],
      }
      
    file {'/etc/rsyslog.conf':
      ensure   => file,
      owner    => root,
      mode     => 0644,
      source   => 'puppet:///modules/rsyslog/rsyslog.conf',
    }
    
}


