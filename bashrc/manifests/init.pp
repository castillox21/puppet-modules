# Class: bashrc
#
# This module manages the .bashrc file for all users
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class bashrc {
  
  #bashrc settings for ccastillo
  file { '/home/ccastillo/.bashrc':
    ensure    => present,
    source    => 'puppet:///modules/bashrc/ccastillo-bashrc',
  }
  
}
