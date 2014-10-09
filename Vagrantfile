# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = "ubuntu/trusty64"
  config.vm.host_name = "codenugget-blog"

  config.vm.network "private_network", ip: "192.168.50.5"
  config.vm.synced_folder ".", "/var/www", :type => 'nfs'
  config.vm.network :forwarded_port, guest: 4000, host: 4040

  config.vm.provision :shell do |shell|
    shell.inline = "mkdir -p /vagrant/puppet/modules;
                    puppet module install -f -i /vagrant/puppet/modules puppetlabs-apt;
                    puppet module install -f -i /vagrant/puppet/modules puppetlabs-stdlib;
                    puppet module install -f -i /vagrant/puppet/modules puppetlabs-gcc;
                    puppet module install -f -i /vagrant/puppet/modules maestrodev-wget;
                    puppet module install -f -i /vagrant/puppet/modules maestrodev/rvm"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path    = "puppet/modules"
    puppet.manifest_file  = "main.pp"
    puppet.options        = [ '--verbose' ]
  end
end
