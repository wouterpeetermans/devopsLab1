Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname=wouter.be
  node.vm.network "private_network", ip:"192.168.50.1"
  config.vm.network "forwarded_port", guest: 80, host: 8080
end
