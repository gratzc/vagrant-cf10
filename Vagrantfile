Vagrant::Config.run do |config|
  
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :hostonly, "192.168.33.10"
  config.vm.host_name = "cf10.vagrant.box"
  config.vm.share_folder "v-root", "/vagrant", ".", :extra => "dmode=777,fmode=777"

  config.vm.customize [
    "modifyvm", :id,
    "--memory", 1024
  ]

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
     
    # core cf10 on apache
    
    chef.add_recipe "apt"
    chef.add_recipe "rng-tools"
    chef.add_recipe "java"
    chef.add_recipe "apache2"
    chef.add_recipe "apache2::mod_ssl"
    chef.add_recipe "coldfusion10"
    chef.add_recipe "coldfusion10::apache"
    chef.add_recipe "mxunit"

    chef.json = {

      "cf10" => {
        "installer" => {
          "local_file" => "/vagrant/ColdFusion_10_WWEJ_linux32.bin",
        }
      },

      "apache" => {
        "listen_ports" => [ "80", "443" ]
      },

      "mxunit" => {
        "download" => {
          "url" => "https://github.com/downloads/mxunit/mxunit/mxunit-2.1.3.zip"
        }
      },

      "java" => {
        "install_flavor" => "oracle",
        "java_home" => "/usr/lib/jvm/java-7-oracle",
        "jdk_version" => "7",
        "oracle" => {
          "accept_oracle_download_terms" => true
        }        
      }
    
    }

  end

  # Vagrant-vbguest settings (https://github.com/dotless-de/vagrant-vbguest)

  config.vbguest.auto_update = false

end