# Class: apache
#
class apache::service inherits apache::params {
   #  $pack_name = $facts['os']['family'] ? {
    #    'Redhat' => 'httpd' , 
     #   'Debian' => 'apache2' ,
   # }

    service { $apache::params::pack_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => '$pack_name',
    }
}