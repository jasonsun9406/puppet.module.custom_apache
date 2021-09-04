class customapache::install {
  class { 'apache':
  }

  apache::listen {'88':}

}
