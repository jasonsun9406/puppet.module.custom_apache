class customapache {

  contain customapache::install
  contain customapache::configssl
}

class customapache::install {
  # class { 'apache':
  # }
  #
  # apache::listen {'88':}

}

class customapache::configssl {

  # class { 'apache::mod::ssl':
  #   ssl_compression => true,
  # }

}
