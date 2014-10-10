# Class: pxe_default
#
# This module manages pxe_default
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
class pxe_default {

  file { '/tftpboot/linux-install/pxelinux.cfg/default':
    ensure    => file,
    owner     => root,
    mode      => 0644,
    source    => 'puppet:///modules/pxe_default/default',
  }

}
