# Puppet Manifest for killing the "killmenow" process
# Using pkill with the exec resource

exec { 'execute_a_command':
  command     => 'pkill -f killmenow',
  refreshonly => true,
  onlyif      => 'pgrep -f killmenow',
}
