help: 
	@echo "List of Comands"
	@echo "configure-vagrant	Will configure the vagrant Tools"

vagrant-up:
	@echo "Vagrant Tools Configure"
	@cd vagrant && vagrant up

vagrant-down:
	@echo "Down Vagrant"
	@cd vagrant && vagrant halt

vagrant-destroy:
	@echo "Destroy Vagrant"
	@cd vagrant && vagrant destroy -f

vagrant-connect:
	@echo "Connect to Vagrant Instance"
	@cd vagrant && vagrant ssh

vagrant-rebuild: vagrant-down vagrant-destroy vagrant-up

vagrant-ansible-up:
	@echo "Vagrant + Ansible Up"
	@cd vagrant/vagrant-ansible && vagrant up

vagrant-ansible-down:
	@echo "Halt Vagrant"
	@cd vagrant/vagrant-ansible && vagrant halt

vagrant-ansible-destroy:
	@echo "Destroy Vagrant"
	@cd vagrant/vagrant-ansible && vagrant destroy -f

vagrant-ansible-rebuild: vagrant-ansible-down vagrant-ansible-destroy vagrant-ansible-up

vagrant-ansible-connect:
	@echo "Connect to Vagrant Instance"
	@cd vagrant/vagrant-ansible && vagrant ssh