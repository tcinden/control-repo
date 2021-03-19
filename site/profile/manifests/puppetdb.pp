class profile::puppetdb {
  class { 'puppetdb': 
    open_listen_port => true,
  }
  class { 'puppetdb::master::config':
    manage_storeconfigs => true,
    manage_config       => true,
    restart_puppet      => true,
    enable_reports      => true,
    enable_storeconfigs => true,
  }
}
