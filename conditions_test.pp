class conditions_test {  
$files = [ 'first', 'second', 'thrid' ]
  $files.each |$file| {

  if ( $file == first ) {
     $file_type = 'directory'  
  }
  else {
     $file_type = 'file'
  }

  case $file_type {
       'directory': { $file_mode = '0755' }
       'file'     : { $file_mode = '0644' }
  }

   file { "/tmp/$file":
     ensure => $file_type,
     owner  => 'root',
     group  => 'root',
     mode   => $file_mode,
    }
  }
}
