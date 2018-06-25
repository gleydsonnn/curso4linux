class test {

case $::osfamily{

        "Redhat": {
                 $pacotes = ["httpd","git","cronie"]
                  }

        "Debian": {
                 $pacotes = ["apache2","git","cron"]
                  }


}

         package{ $pacotes:
              ensure => present,
           }

$users = ["devops","jorge","judith"]

user{$users:
       ensure => present,
    }


file{"/root/.bashrc":
   source => "puppet://modules/test/bashrc_base",
   ensure => present,

 }
}
