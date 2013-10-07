task 'virtualbox-install' do
    system 'vagrant box remove ubuntu1204-opsworks virtualbox'
    system 'vagrant box add ubuntu1204-opsworks virtualbox/ubuntu1204-opsworks.box'
end

task 'virtualbox-build' do
    system 'packer build -only=virtualbox ubuntu12.04-opsworks.json'
end

task 'vmware-install' do
    system 'vagrant box remove ubuntu1204-opsworks vmware_desktop'
    system 'vagrant box add ubuntu1204-opsworks vmware/ubuntu1204-opsworks.box'
end

task 'vmware-build' do
    system 'packer build -only=vmware ubuntu12.04-opsworks.json'
end