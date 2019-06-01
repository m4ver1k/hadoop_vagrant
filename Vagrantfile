
Vagrant.configure("2") do |config|
  
  config.ssh.insert_key = false
  config.vm.box = "centos/7"
  
  config.vm.define "master" do |master| 
    master.vm.hostname = "cluster-master.local"
    master.vm.network "private_network", ip: "192.168.83.10"
    master.vm.provider "virtualbox" do |v|
      v.name = "hadoop_master"
      v.memory = 2048
      #v.cpus = 2
    end
    master.vm.provision :shell, :path => "node_setup.sh"
    master.vm.provision :shell, :path => "install_ambari.sh"
  end

  (1..2).each do |i|
    config.vm.define "worker-#{i}" do |worker|
      worker.vm.hostname = "cluster-worker-#{i}.local"
      worker.vm.network "private_network", ip: "192.168.83.1#{i}"
      worker.vm.provider "virtualbox" do |v|
        v.name = "hadoop_worker_#{i}"
        v.memory = 2048
        #v.cpus = 2
      end
      worker.vm.provision :shell, :path => "node_setup.sh"
    end
  end
  
end