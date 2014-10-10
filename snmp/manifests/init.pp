# Class: snmp
#
# This module manages snmp
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
class snmp {
  
  package{ 'net-snmp':
    ensure   => installed,
  }
    
  service { 'snmpd':
    ensure   => running,
    enable   => true,
    subscribe   => File['puppet:///modules/snmp/snmpd.conf'],
  }
  
  file { '/etc/snmp/snmpd.conf':
    ensure   => file,
    owner    => root,
    mode     => 0644,
    source   => 'puppet:///modules/snmp/snmpd.conf',
  }

}
