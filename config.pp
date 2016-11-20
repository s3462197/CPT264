#disable ssh root access.
file_line { 'sshRootDisable':
	ensure 		=> 	present,
	path   		=> 	'/etc/ssh/sshd_config',
	line   		=> 	'PermitRootLogin no',
	match  		=> 	'^PermitRootLogin',	
}

#move document root
file_line { 'documentRoot':
	ensure	=> present,
	path	=>	'/etc/httpd/conf/httpd.conf',
	line	=>	'DocumentRoot "/var/www/s3462197"',
	match	=>	'^DocumentRoot',
}

#grant becca sudo access 
file_line { 'sudoers':
	ensure	=> present,
	path	=>	'/etc/sudoers',
	line	=>	'becca	ALL=(ALL)	ALL',	
}

#Ensure /usr/local/bin is in everyone's path on the system
file { '/etc/profile.d':
	ensure =>	present,
	source =>	'/usr/local/bin',
}