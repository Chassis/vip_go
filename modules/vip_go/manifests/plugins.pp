# VIP Go extension for Chassis
# lint:ignore: no-names_containing_dash-check
class vip_go::plugins (
  $path  = '/vagrant/extensions/vip_go',
) {

    # We'll always want this directory.
    if ! ( File['/vagrant/content'] ) {
            file { '/vagrant/content':
                ensure => directory,
            }
    }

    file { '/vagrant/content/mu-plugins':
        ensure  => directory,
        recurse => true,
        force   => true
    }

    exec { 'mu-plugins-install':
        command => 'git clone --recursive https://github.com/Automattic/vip-go-mu-plugins.git /vagrant/content/mu-plugins',
        path    => [ '/usr/bin/', '/bin' ],
        require => Package[ 'git-core' ],
        timeout => 0,
        unless  => "test -d /vagrant/content/mu-plugins/000-debug",
    }

}
