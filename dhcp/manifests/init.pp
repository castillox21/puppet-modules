# Class: dhcp
#
# This module manages dhcp
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
#
class dhcp { 
  
  package { 'dhcpd':
    ensure    => installed,
  }

  service {'dhcpd':
    ensure    => running,
    enable    => true
  }
  
}

