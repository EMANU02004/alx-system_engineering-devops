# Increases the amount of traffic an Nginx server can handle.
# Increase the ULIMIT of the default file

exec {'Limit':
  command  => '/usr/bin/env sed -i s/15/2000/ /etc/default/nginx',
}

exec { '/usr/bin/env service nginx restart':
}
