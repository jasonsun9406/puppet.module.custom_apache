Facter.add('check_nr_exist') do
  confine :osfamily => :windows
  setcode do
    $serviceExist = Get-Service -Name "newrelic-infra" -ErrorAction SilentlyContinue
    if ($serviceExist){
        Write-Output "check_nr_exist=true"
    }else{
        Write-Output "check_nr_exist=false"
    }
  end
end