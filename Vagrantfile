# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

	config.vm.box = "ubuntu/trusty64"

	config.vm.hostname = "jenkins"
	config.vm.network :forwarded_port, guest: 8080, host: 8080
	config.ssh.forward_agent = true

	config.vm.provision :ansible do |ansible|
		ansible.playbook = "playbook.yml"
	end
end
