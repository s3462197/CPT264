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

#broken
#service { 'tigervnc-server':
#ensure	=>	running,
#enable	=>	true,
#}
