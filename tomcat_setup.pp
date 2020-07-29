class tomcat_setup {

   notify { '**************Tomcat module First Manifest':}
   package { ['tomcat','tomcat-webapps']:

        ensure  => present,
   }


   notify {'**************Tomcat module Thrid Manifest': }
   file { '/etc/tomcat/tomcat.conf':
   source => 'puppet:///modules/tomcat_file_based/tomcat.conf',
   }

   notify {'**************Tomcat module Second Manifest': }
   service { 'tomcat':
   ensure  => running,
   }

}

