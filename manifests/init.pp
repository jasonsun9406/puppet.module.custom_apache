class customapache {

  contain customapache::install
  contain customapache::configssl
}

class customapache::install {
  if $facts['windows_edition_custom'] != 'testvalue' {
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
