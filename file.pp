file_line { 'puppetboard listen':
  path    => "/srv/puppetboard/puppetboard/dev.py",
  line    => "    app.run('0.0.0.0')",
  match   => '[ ]+app.run\((.*)\)',
}

file_line { 'puppetboard puppetdb':
  path    => "/srv/puppetboard/puppetboard/puppetboard/default_settings.py",
  line    => "PUPPETDB_HOST = 'puppetdb'",
  match   => 'localhost',
}
