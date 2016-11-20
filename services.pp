#openssh
service { 'sshd':
ensure	=>	running,
enable	=>	true,
}

service { 'httpd':
ensure	=>	running,
enable	=>	true,
}

service { 'mariadb':
ensure	=>	running,
enable	=>	true,
}

/* attempted vnc
service { 'vncserver':
ensure	=>	running,
enable	=>	true,
}
*/