Facter.add('check_nr_exist') do
  confine :osfamily => :windows
  setcode do
    Facter::Core::Execution.execute(%q[powershell "if (get-service | where {$_.Name -eq newrelic-infra}){write-host \"true\"}else{write-host \"false\"}"])
  end
end