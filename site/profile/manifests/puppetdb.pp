class profile::puppetdb {
  class { 'puppetdb':
    open_listen_port      => true,
    open_ssl_listen_port  => true,
    manage_firewall       => true,
    automatic_dlo_cleanup => true,
    dlo_max_age           => 10,
  }
  class { 'puppetdb::master::config':
    puppetdb_soft_write_failure    => true,
    manage_storeconfigs            => true,
    manage_report_processor        => true,
    create_puppet_service_resource => true,
    manage_config                  => true,
    restart_puppet                 => true,
    enable_reports                 => true,
    enable_storeconfigs            => true,
  }
}
