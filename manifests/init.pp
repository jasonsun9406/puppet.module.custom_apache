class customapache {

  contain customapache::install
}



class customapache::install {
  contain apache
  apache::listen {'88':}

}


class { 'apache':
}