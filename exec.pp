exec { 'using exec':
  command => '/bin/touch /tmp/exec_file',
  creates => '/tmp/exec_file',
}
