# Class: ssh
#
# This module manages ssh
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ssh {
  
  service { 'sshd':
    ensure   => running,
    enable   => true,
  }
  
}
