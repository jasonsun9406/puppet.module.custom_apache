class apache::install{
  class { 'apache':
  }

  apache::listen {'80':}

}
