Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname="wouter.be"
  config.vm.network "private_network", ip:"192.168.50.2"
  config.vm.network "forwarded_port", guest: 80, host: 8082
  config.vm.provision "shell", path: "provision_node.sh"
end
