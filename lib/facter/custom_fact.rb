Facter.add('check_nr_svc') do
  confine :osfamily => :windows
  setcode do
    Facter::Core::Execution.execute(%q[powershell "if (get-service -Name puppet -ErrorAction SilentlyContinue){write-host \"true\"}else{write-host \"false\"}"])
  end
end