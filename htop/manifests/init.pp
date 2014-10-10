# Class: htop
#
# This module manages htop
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class htop {

  package {'htop':
    ensure    => installed,
  }
  
}
