Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
#  config.disksize.size = '13GB'
  
  # config.vm.hostname = "linux-for-course"

   config.vm.provider "virtualbox" do |vb|
     vb.memory = "4096"
     config.disksize.size = '20GB'
   end


  config.vm.define "ansible-server" do |server|
    server.vm.provision "shell", path: "provisions/provision.sh"
    server.vm.hostname = "ansible-server"
    server.vm.network "private_network", ip: "192.168.10.1"

    server.vm.box = "ubuntu/xenial64"

    # server.vm.provision "ansible_local" do |ansible|
    #   ansible.playbook = "provisioning/playbook.yml"
    # end
  end


   config.vm.define "master" do |master|
    master.vm.box = "ubuntu/xenial64"
  
    master.vm.hostname = "master"
  
    master.vm.provision "shell", path: "provisions/provision.sh"
    # master.vm.network "forwarded_port", guest: 80, host: 9091
    master.vm.network "private_network", ip: "192.168.10.2"
	end 


  config.vm.define "minion1" do |minion1|
	  minion1.vm.box = "ubuntu/xenial64"
 
	  minion1.vm.hostname = "minion-01"
 
    minion1.vm.provision "shell", path: "provisions/provision.sh"
    # minion1.vm.network "forwarded_port", guest: 80, host: 9092
    minion1.vm.network "private_network", ip: "192.168.10.3"
	end 


   config.vm.define "minion2" do |minion2|
	  minion2.vm.box = "ubuntu/xenial64"
 
	  minion2.vm.hostname = "minion-02"
    minion2.vm.provision "shell", path: "provisions/provision.sh"
    # minion2.vm.network "forwarded_port", guest: 80, host: 9092
    minion2.vm.network "private_network", ip: "192.168.10.4"
	end 
  
  
  config.vm.define "jenkins" do |jenkins|
	  jenkins.vm.box = "ubuntu/xenial64"
 
	  jenkins.vm.hostname = "jenkins"
    jenkins.vm.provision "shell", path: "provisions/provision.sh"
    jenkins.vm.provision "shell", path: "provisions/provision-jenkins.sh"
    jenkins.vm.network "forwarded_port", guest: 8080, host: 8080
    jenkins.vm.network "forwarded_port", guest: 8081, host: 8081
    jenkins.vm.network "private_network", ip: "192.168.10.20"
	end 
  
end

