Facter.add('check_nr_exist') do
  confine :osfamily => :windows
  setcode do
    Facter::Core::Execution.execute(%q[powershell "write-host \"check_nr_exist=true\""])
  end
end