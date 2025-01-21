
# Puppet manifest to configure Nginx with custom header

# Update package repositories
exec { 'update_packages':
  command  => 'apt-get update',
  provider => 'shell',
}

# Install Nginx
package { 'nginx':
  ensure  => installed,
  require => Exec['update_packages'],
}

# Get hostname
$hostname = $facts['hostname']

# Create Nginx configuration file
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;
    server_name _;
    add_header X-Served-By ${hostname};
    location / {
        try_files \$uri \$uri/ =404;
    }
}",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Ensure Nginx service is running
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => File['/etc/nginx/sites-available/default'],
}
