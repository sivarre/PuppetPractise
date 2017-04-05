
class apache::install {
    # resources
    $pack_name = $facts['os']['family'] ? {
        'Redhat' => 'httpd' , 
        'Debian' => 'apache2' ,
    }

    package { $pack_name:
        ensure => installed,
        
    }

}