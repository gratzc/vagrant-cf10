Vagrant::Config.run do |config|
  
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :hostonly, "192.168.33.10"
  config.vm.host_name = "cf10.vagrant.box"
  config.vm.share_folder "vagrant-root", "/vagrant", ".", :extra => "dmode=777,fmode=777"

   config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"

    chef.add_recipe "apt"
    #chef.add_recipe "rng-tools"
    chef.add_recipe "java"
    #chef.add_recipe "build-essential"
    chef.add_recipe "ant"
    chef.add_recipe "git"
    chef.add_recipe "vim"
    chef.add_recipe "ubuntu"
    chef.add_recipe "apache2"
    chef.add_recipe "apache2::mod_ssl"
    chef.add_recipe "coldfusion10"
    chef.add_recipe "coldfusion10::apache"
    #chef.add_recipe "mysql::server"
    #chef.add_recipe "postgresql::server"
    chef.add_recipe "mxunit"
    chef.add_recipe "cloudy"
    chef.add_recipe "jenkins"

    #https://github.com/jubianchi/php-ci-box/blob/master/Vagrantfile
    #https://github.com/widop/php-ci/blob/master/Vagrantfile
    
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
        "oracle" => {
          "accept_oracle_download_terms" => true
        }        
      },

        "jenkins" => {
                "node" => {
                    "home" => "/var/lib/jenkins"
                },
                "server" => {
                    "plugins" => ["URLSCM", "git", "github", "github-api", "ghprb", "clover", "maven-plugin"]
                }
            }

    }
  end

config.vm.forward_port 8080, 8181, :auto => true
end