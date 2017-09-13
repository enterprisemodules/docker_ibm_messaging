class profile::example::iib_setup()
{

  $version = lookup('profile::installiib::version', String[1])

  iib_broker { "${version}/NODE1":
    ensure => 'present',
    status => 'running',
  }

  #
  # Here is the definition of a Server  with all possible properties.
  # Most of these are default. Use just the ones you need to be different from defaults
  #
  -> iib_server { "${version}/NODE1/server_1":
    ensure => 'present',
    status => 'running',
    # execution_group_injection_mode  => 'Disabled',
    # http_connector_cors_enabled     => 'false',
    # http_connector_user_trace_level => 'none',
  }

  #
  # Here is the definition of a Server  with all possible properties.
  # Most of these are default. Use just the ones you need to be different from defaults
  #
  -> iib_server { "${version}/NODE1/server_2":
    ensure => 'present',
    status => 'running',
    # execution_group_injection_mode  => 'Disabled',
    # http_connector_cors_enabled     => 'false',
    # http_connector_user_trace_level => 'none',
  }
  #
  # First copy the bar file to a location we can read
  #
  file {'/tmp/Helloproject.TestMode.bar':
    ensure =>'present',
    source => 'puppet:///modules/deployments/Helloproject.TestMode.bar',
  }

  -> iib_deployment {"${version}/NODE1/server_1/Hello":
    ensure => 'present',
    source => '/tmp/Helloproject.TestMode.bar',
  }

  -> iib_deployment {"${version}/NODE1/server_2/Hello":
    ensure => 'present',
    source => '/tmp/Helloproject.TestMode.bar',
  }

}
