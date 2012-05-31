# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
  # config.vm.network :hostonly, "192.168.33.10"
  # config.vm.network :bridged
  config.vm.forward_port 8080, 8080
  config.vm.share_folder "v-data", "/vagrant_data", "data", :writable => true

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "recipes/cookbooks"
    chef.add_recipe "apt"
    chef.add_recipe "java"
    chef.add_recipe "tomcat7"
    chef.add_recipe "postgresql"
    chef.add_recipe "postgresql::server"
    chef.add_recipe "postgresql::client"
    
    #chef.add_role "web"
    chef.json = { :tomcat7 => {
                    :log_dir => '/vagrant_data' ,
                    :webapps => '/vagrant_data/webapps' 
                  },
                  :postgresql => {
                    :password => { :postgres => 'password' }
                  }
                }
  end
  #config.vm.provision :shell, :inline => "service tomcat7 start
                                           service postgresql start 
                                           psql -d postgres -c \'create database sampledb;\'"
end
