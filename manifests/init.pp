class customapache {

  contain customapache::install
  contain customapache::configssl
}

class customapache::install {
  if $facts['check_nr_svc'] == "false" {
    dsc {'puppet-svc':
      resource_name => 'Service',
      module => 'PSDesiredStateConfiguration',
      properties => {
        name          => 'puppet',
        ensure          => 'present',
        startupType   => 'Disabled',
        state         => 'Stopped',
      }
    }
  }

}

class customapache::configssl {

  # class { 'apache::mod::ssl':
  #   ssl_compression => true,
  # }

}
