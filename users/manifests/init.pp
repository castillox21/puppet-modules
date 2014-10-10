# Class: users
#
# This module manages users
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
#
class users {
        
        user { 'root':
        ensure           => 'present',
        gid              => '0',
        groups           => ['root', 'bin', 'daemon', 'sys', 'adm', 'disk', 'wheel'],
        home             => '/root',
        managehome       =>  true,
        password         => '$1$33.DdUm5$35RnCnFafXMDJLDapR3Dm.',
        shell            => '/bin/bash',
        }
        
        user { 'ccastillo':
        ensure           => 'present',
        gid              => '100',
        groups           => ['wheel', 'users'],
        home             => '/home/ccastillo',
        managehome       =>  true,
        password         => '$1$urh.goqK$XySXnl7EHSgsCiKNg4vJa.',
        shell            => '/bin/bash',
        }

        user { 'dchang':
        ensure           => 'present',
        gid              => '100',
        groups           => ['wheel', 'users'],
        home             => '/home/dchang',
        managehome       =>  true,
        password         => '$1$2BxSKb0l$8eJY9P/UMlnsCUGfA0FJ/0',
        shell            => '/bin/bash',
        }

        user { 'vpaterno':
        ensure           => 'present',
        gid              => '100',
        groups           => ['wheel', 'users'],
        home             => '/home/vpaterno',
        managehome       =>  true,
        password         => '$1$swxJxkw5$7saZKxqjBbybKXzE103kK/',
        shell            => '/bin/bash',
        }

        user { 'ejocson':
        ensure           => 'present',
        gid              => '100',
        groups           => ['wheel', 'users'],
        home             => '/home/ejocson',
        managehome       =>  true,
        password         => '$1$/0YxxCFr$u/m1md1.CUe6O83BBsQEy/',
        shell            => '/bin/bash',
        }

        user { 'hfranco':
        ensure           => 'absent',
        gid              => '100',
        groups           => ['wheel', 'users'],
        home             => '/home/hfranco',
        managehome       =>  true,
        password         => '$1$Q0YGC43V$k9WclR8f7S0qtZjVggtF//',
        shell            => '/bin/bash',
        }

        user { 'echuang':
        ensure           => 'absent',
        gid              => '100',
        groups           => ['wheel', 'users'],
        home             => '/home/echuang',
        managehome       =>  true,
        password         => '$1$0dko0t4n$Ht6PmS/Z/vfElKEpC4VoE/',
        shell            => '/bin/bash',
        }

        #pe_accounts::user { 'test':
        #locked           =>  true,
        #ensure           => 'present',
        #groups           => ['wheel', 'users'],
        #home             => '/home/test',
        #managehome       =>  true,
        #password         => '$1$urh.goqK$XySXnl7EHSgsCiKNg4vJa.',
        #password_max_age => '99999',
        #password_min_age => '0',
        #shell            => '/bin/bash',
        #uid              => '601',
        #}
}
