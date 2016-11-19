group { 'sysadmin':
  			  ensure => 'present',
  			  gid    => '500',
     }
	 
group { 'cars':
  			  ensure => 'present',
  			  gid    => '501',
     }
	 
group { 'trucks':
  			  ensure => 'present',
  			  gid    => '502',
     }

user { 'becca':
 			  ensure           => 'present',
      home             => '/home/becca',
      comment           => 'Becca Someoneface',
      groups            => ['sysadmin', 'cars'],
      password         => '$1$RHVeyyNl$usSOMV5tcj75IZrRbfKe41',
      password_max_age => '99999',
      password_min_age => '0',
      shell            => '/bin/bash',
      uid              => '10012197',
    }
	
user { 'fred':
	  ensure           => 'present',
      home             => '/home/fred',
      comment           => 'Fred Guyface',
      groups            => ['trucks', 'cars'],
      password         => '$1$efsACfEN$cTFuuJUBnS0zsNQ/P0UaQ.',
      password_max_age => '99999',
      password_min_age => '0',
      shell            => '/bin/csh',
      uid              => '10022197',
    }