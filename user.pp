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
	 
group { 'ambulances':
  			  ensure => 'present',
  			  gid    => '503',
     }

user { 'becca':
 			  ensure           => 'present',
      home             	=> '/home/becca',
	  managehome 		=> true,
      comment           => 'Becca Someoneface',
      groups            => ['sysadmin', 'cars'],
      password         	=> '$1$RHVeyyNl$usSOMV5tcj75IZrRbfKe41',
      password_max_age 	=> '99999',
      password_min_age 	=> '0',
      shell            	=> '/bin/bash',
      uid              	=> '10012197',
    }
	
user { 'fred':
	  ensure           	=> 'present',
      home             	=> '/home/fred',
	  managehome 		=> true,
      comment           => 'Fred Flinstone',
      groups            => ['trucks', 'cars'],
      password         	=> '$1$efsACfEN$cTFuuJUBnS0zsNQ/P0UaQ.',
      password_max_age 	=> '99999',
      password_min_age 	=> '0',
      shell            	=> '/bin/csh',
      uid              	=> '10022197',
    }
	
user { 'wilma':
	  ensure           	=> 'present',
      home             	=> '/home/wilma',
	  managehome 		=> true,
      comment           => 'Wilma Flinstone',
      groups            => ['trucks', 'cars', 'ambulances'],
      password         	=> '$1$3sr7h6nB$fnR6tpU30FZkAdf6U4svt.',
      password_max_age 	=> '99999',
      password_min_age 	=> '0',      
      uid              	=> '10032197',	  
    }
	
ssh_authorized_key { 'wilma':
  ensure => present,
  user   => 'wilma',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDnyQhoJwP+S3TpHZtwgbwbHiGufHaWg41Uu6PlzOGhJgoqMAIqDe7/WWggXqEg6WisprmWxx4W0kifqxavwEi5tiSXjn47w8KjlhFia9QiZwLnLXmbMESUmuo5FKMOfkbcnlqajH7vJNbx4bFkGvTW1AkpH8U9d+zc3b2qOFJf2d0rAjz3I1iUTdRdu89I04MRN+jYSfsMskETidEZMdQFC0dxub9cAj6BZq2YbQtJOhiU38abcGrBr/mPe27bA63bcjkwHsMMB0zMWhVnbI1RTHzJdbiD5sRPAOZ1pEsgQJNOrZ2M9ahgXpj5G1kbccPB0WhRK6IEKcShyObnSEt9',
  }
