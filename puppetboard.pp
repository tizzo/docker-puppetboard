# Configure Apache on this server
class { 'apache':
  default_vhost => false,
}
class { 'apache::mod::wsgi': }

class { 'puppetboard':
  manage_virtualenv => true,
  puppetdb_host     => 'puppetdb',
  puppetdb_port     => 8081,
  manage_git        => true,
}

class { 'puppetboard::apache::vhost':
  vhost_name => 'pboard.example.com',
  port       => 80,
}
