
Vagrant.configure("2") do |config|
  
  config.vm.box = "centos/7"
  
  config.vm.define "master" do |node| 
    node.vm.hostname = "cluster-master.local"
    node.vm.network "private_network", ip: "192.168.83.10"
    node.vm.provider "virtualbox" do |v|
      v.name = "hadoop_master"
      v.memory = 2048
      #v.cpus = 2
    end
  end

  (1..2).each do |i|
    config.vm.define "worker-#{i}" do |node|
      node.vm.hostname = "cluster-worker-#{i}.local"
      node.vm.network "private_network", ip: "192.168.83.1#{i}"
      node.vm.provider "virtualbox" do |v|
        v.name = "hadoop_worker_#{i}"
        v.memory = 2048
        #v.cpus = 2
      end
    end
  end
end