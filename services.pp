#run openssh service
service { 'sshd':
ensure	=>	running,
enable	=>	true,
}

#run httpd (apache) service
service { 'httpd':
ensure	=>	running,
enable	=>	true,
}

#run mysql (mariadb) service
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