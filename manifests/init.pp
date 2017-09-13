# It's common for systemd services to need to refresh systemctl
# by always returning true we avoid issues with what in the context
# of this module are unhelpful execs
file { '/bin/systemctl':
  ensure => link,
  target => '/bin/true',
}

# In cases where included modules explicitly set the provider
# the resource default won't work, so you may need to
# drop down and use resource collectors
Service <| |> { provider => dummy }

contain ::profile::base
contain ::mq_install::installmq
contain ::profile::installiib
contain ::profile::example_setup

Class['::mq_install::installmq']
-> Class['::profile::installiib']
-> Class['::profile::example_setup']
