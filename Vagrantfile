Vagrant.configure("2") do |config|
  
  config.vm.define "mysql" do |mysql|

    mysql.vm.box = "ubuntu/bionic64" 

    mysql.vm.provider "virtualbox" do |vb|
      vb.memory = "2028"
      vb.cpus = "2"
    end
     
    mysql.vm.network "forwarded_port", guest: 3306, host: 3306

    mysql.vm.provision "shell", path: "scripts/provision.sh"  

  end

end


