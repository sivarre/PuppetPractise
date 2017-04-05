# Class:apache::homepage
#
#
class apache::homepage {
    # resources
    file { '/var/www/index/':
        ensure => file,
        owner  => owner,
        group  => group,
        mode   => mode,
#        source => 'puppet:///modules/class/file.txt';
        content => file('apache/file/index.html'),
    }

 $pack_name = $facts['os']['family'] ? {
        'Redhat' => 'httpd' , 
        'Debian' => 'apache2' ,
    }
    service { "test":
        name => pack_name,
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        restart => ,
        # pattern    => 'test',
    }
}