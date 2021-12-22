Facter.add('check_nr_exist') do
  confine :osfamily => :windows
  setcode do
    if (Get-Service -Name newrelic-infra -ErrorAction SilentlyContinue){
        return $true
    }else{
        return $false
    }
  end
end