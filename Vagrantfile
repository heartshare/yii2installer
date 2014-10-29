VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty32"
  config.vm.network "private_network", ip: "170.170.170.170"
  config.vm.synced_folder "./www", "/var/www"
end