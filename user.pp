group { 'sysadmin':
  			  ensure => 'present',
  			  gid    => '500',
     }
	 
group { 'cars':
  			  ensure => 'present',
  			  gid    => '501',
     }

user { 'becca':
 			  ensure           => 'present',
      home             => '/home/becca',
      comment           => 'becca someoneface',
      groups            => ['sysadmin', 'cars'],
      password         => '$1$RHVeyyNl$usSOMV5tcj75IZrRbfKe41',
      password_max_age => '99999',
      password_min_age => '0',
      shell            => '/bin/bash',
      uid              => '10012197',
    }