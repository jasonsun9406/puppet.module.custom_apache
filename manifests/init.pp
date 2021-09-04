class apache::install inherits apache{
  class { 'apache':
  }

  apache::listen {'80':}

}
