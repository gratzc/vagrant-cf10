Vagrant.configure("2") do |config|
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    config.vm.network :forwarded_port, guest: 8080, host: 8181, auto_correct: true
  end
end

Vagrant::Config.run do |config|
  
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :hostonly, "192.168.33.10"
  config.vm.host_name = "cf10.vagrant.box"
  config.vm.share_folder "vagrant-root", "/vagrant", ".", :extra => "dmode=777,fmode=777"
  
   config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"

    chef.add_recipe "apt"
    chef.add_recipe "rng-tools"
    chef.add_recipe "java"
    chef.add_recipe "git"
    chef.add_recipe "vim"
    chef.add_recipe "apache2"
    chef.add_recipe "apache2::mod_ssl"
    chef.add_recipe "coldfusion10"
    chef.add_recipe "coldfusion10::apache"
    chef.add_recipe "mxunit"
    chef.add_recipe "cloudy"
    chef.add_recipe "qpscanner"
    chef.add_recipe "varscoper"

    chef.json = {

      "cf10" => {
        "installer" => {
          "local_file" => "/vagrant/ColdFusion_10_WWEJ_linux32.bin",
        }
      },

       "apache" => {
        "listen_ports" => [ "80", "443" ]
      },

      "java" => {
              
      }

    }
  end

end