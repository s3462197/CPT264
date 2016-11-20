#install openssl
package { 'openssl':
  ensure => installed,
  name   => openssl,
}

#install openssh-server
package { 'openssh-server':
  ensure  => installed,
  name    => openssh-server,
  require => Package['openssl'],
}

#install openssh-clients
package { 'openssh-clients':
  ensure  => installed,
  name    => openssh-clients,
  require => Package['openssl'],
}

#install apache
package { 'httpd':
  ensure  => installed,
  name    => httpd,  
}

#install mysql server (mariadb)
package { 'mariadb-server':
  ensure  => installed,
  name    => mariadb-server,  
}

#install  mysql client
package { 'mariadb':
  ensure  => installed,
  name    => mariadb,  
}

#install vnc server
package { 'vncserver':
  ensure  => installed,
  name    => vnc-server,  
}

#install tmux
package { 'tmux':
  ensure => installed,
  name   => tmux,
}

#install glibc developer package
package { 'glibc-devel':
	ensure	=>	installed,
	name	=>	'glibc-devel.i686',
}

#install glibc
package { 'glibc':
	ensure	=>	installed,
	name	=>	'glibc.i686',
} 

#install dia2code
package { 'dia2code':
	ensure	=>	installed,
	name	=>	dia2code,
	source	=> "http://sourceforge.net/projects/dia2code/files/dia2code/0.8.3/dia2code-0.8.3-3.1.i586.rpm",
	provider	=>	'rpm',
}

#install lynx
package { 'lynx':
	ensure	=>	installed,
	name	=>	lynx,
	install_options	=>	[ { '--enablerepo'	=>	'rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional'} ],
}

#install gcc
package { 'gcc':
  ensure => installed,
  name   => gcc,
}

#install gdb
package { 'gdb':
  ensure => installed,
  name   => gdb,
}

#install epel
package { 'epel-release':
	ensure	=>	installed,
	name	=>	epel-release,
	source	=>	'http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm',
	provider	=>	'rpm',
}

#install cgdb
package { 'cgdb':
	require => Package['epel-release'],
	ensure	=>	installed,
	name	=>	cgdb
}

#install vim
package { 'vim':
  ensure => installed,
  name   => vim,
}

#install emacs
package { 'emacs':
  ensure => installed,
  name   => emacs,
}

#install sshfs
package { 'sshfs':
  ensure => installed,
  name   => sshfs,
}