class { 'puppetboard':
  manage_virtualenv => true,
  manage_git        => true,
  puppetdb_host     => 'puppetdb',
  puppetdb_port     => '8081',
}
