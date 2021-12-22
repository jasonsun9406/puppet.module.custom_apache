Facter.add('check_nr_exist') do
  confine :osfamily => :windows
  setcode do
    Facter::Core::Execution.execute(%q[powershell "if (Get-Service | where {$_.Name -eq newrelic-infra}){Write-host check_nr_exist=true}else{Write-host check_nr_exist=false}"])
  end
end