# Class: apache
#
class apache::service {
     $pack_name = $facts['os']['family'] ? {
        'Redhat' => 'httpd' , 
        'Debian' => 'apache2' ,
    }

    service { '$pack_name':
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => '$pack_name',
    }
}