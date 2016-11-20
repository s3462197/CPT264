#edit runinterval in puppet.conf
ini_setting { "interval":
  ensure  => present,
  path    => '/etc/puppetlabs/puppet/puppet.conf',
  section => 'main',
  setting => 'runinterval',
  value   => '1600',
}