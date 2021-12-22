class customapache {

  contain customapache::install
  contain customapache::configssl
}

class customapache::install {
  if $facts['check_nr_exist'] {
    exec { 'Check-Service':
      command   => 'write-host work',
      provider  => powershell,
      logoutput => true,
    }
  }

}

class customapache::configssl {

  # class { 'apache::mod::ssl':
  #   ssl_compression => true,
  # }

}
