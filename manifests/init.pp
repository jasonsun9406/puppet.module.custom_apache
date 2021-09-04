class customapache {

  contain customapache::install
}

class customapache::install {
  class { 'apache':
  }

  apache::listen {'88':}

}
