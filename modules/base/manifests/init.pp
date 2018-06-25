class base {

case $::osfamily{

        "Redhat": {
                 $pacotes = ["epel-release","vim","sysstat","sl","figlet","httpd"]
                  }

        "Debian": {
                 $pacotes = ["vim","sysstat","sl","figlet","apache2"]
                  }


}

         package{ $pacotes:
              ensure => present,
           }



 }
