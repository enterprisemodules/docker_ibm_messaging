# TODO: Add documentation
class profile::example_setup()
{
  contain ::profile::example::mq_setup
  contain ::profile::example::iib_setup

  Class['profile::example::mq_setup']
  ->Class['profile::example::iib_setup']
}
