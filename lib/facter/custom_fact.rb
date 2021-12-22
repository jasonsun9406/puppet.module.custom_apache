Facter.add('check_nr_exist') do
  confine :osfamily => :windows
  setcode do
    $serviceExist = Get-Service | where {$_.Name -eq "newrelic-infra"};
    Facter::Core::Execution.execute('
    if (Get-Service | where {$_.Name -eq newrelic-infra})
    {Write-Output check_nr_exist=true}else{Write-Output check_nr_exist=false};
    ')

  end
end