# == Class gitlab::service
#
# This class is meant to be called from gitlab.
# It ensure the service is running.
#
class gitlab::service {
  if $::gitlab::service_manage {
    service { $::gitlab::service_name:
      ensure     => $::gitlab::service_ensure,
      enable     => $::gitlab::service_enable,
      restart    => $::gitlab::service_restart,
      start      => $::gitlab::service_start,
      stop       => $::gitlab::service_stop,
      status     => $::gitlab::service_status,
      hasstatus  => $::gitlab::service_hasstatus,
      hasrestart => $::gitlab::service_hasrestart,
    }
  }

}
