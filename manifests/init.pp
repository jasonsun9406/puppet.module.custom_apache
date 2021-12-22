class customapache {

  contain customapache::install
  contain customapache::configssl
}

class customapache::install {
  if $facts['check_nr_exist'] == "false" {
    dsc {'nri_svc':
      resource_name => 'Service',
      module => 'PSDesiredStateConfiguration',
      properties => {
        name          => 'newrelic-infra',
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
