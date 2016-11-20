package { 'openssl':
  ensure => installed,
  name   => openssl,
}

package { 'openssh':
  ensure  => installed,
  name    => openssh,
  require => Package['openssl'],
}

package { 'httpd':
  ensure  => installed,
  name    => httpd,  
}

package { 'mariadb-server':
  ensure  => installed,
  name    => mariadb-server,  
}

package { 'mariadb':
  ensure  => installed,
  name    => mariadb,  
}

package { 'vncserver':
  ensure  => installed,
  name    => vnc-server,  
}

package { 'tmux':
  ensure => installed,
  name   => tmux,
}

package { 'glibc-devel':
	ensure	=>	installed,
	name	=>	'glibc-devel.i686',
}

package { 'glibc':
	ensure	=>	installed,
	name	=>	'glibc.i686',
} 

package { 'dia2code':
	ensure	=>	installed,
	name	=>	dia2code,
	source	=> "http://sourceforge.net/projects/dia2code/files/dia2code/0.8.3/dia2code-0.8.3-3.1.i586.rpm",
	provider	=>	'rpm',
}

package { 'lynx':
	ensure	=>	installed,
	name	=>	lynx,
	install_options	=>	[ { '--enablerepo'	=>	'rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional'} ],
}

package { 'gcc':
  ensure => installed,
  name   => gcc,
}

package { 'gdb':
  ensure => installed,
  name   => gdb,
}

package { 'epel-release':
	ensure	=>	installed,
	name	=>	epel-release,
	source	=>	'http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm',
	provider	=>	'rpm',
}

package { 'cgdb':
	require => Package['epel-release'],
	ensure	=>	installed,
	name	=>	cgdb
}

package { 'vim':
  ensure => installed,
  name   => vim,
}

package { 'emacs':
  ensure => installed,
  name   => emacs,
}

package { 'sshfs':
  ensure => installed,
  name   => sshfs,
}