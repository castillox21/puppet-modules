# Class: test_file
#
# This module manages test_file
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
class test_file {
  
  file { '/tmp/testfile':
    ensure   => file,
    owner    => ccastillo,
    mode     => 0777,
    source   => 'puppet:///modules/test_file/testfile',
  }

}
