task 'virtualbox-build' => 'clean' do
    system 'packer build -only=virtualbox-iso ubuntu12.04-opsworks.json'
end

task 'virtualbox-install' do
    system 'vagrant box remove ubuntu1204-opsworks --provider virtualbox'
    system 'vagrant box add ubuntu1204-opsworks virtualbox/ubuntu1204-opsworks.box'
end

task 'vmware-build' => 'clean' do
    system 'packer build -only=vmware-iso ubuntu12.04-opsworks.json'
end

task 'vmware-install' do
    system 'vagrant box remove ubuntu1204-opsworks --provider vmware_desktop'
    system 'vagrant box add ubuntu1204-opsworks vmware/ubuntu1204-opsworks.box'
end

task 'clean' do
    system 'rm -f virtualbox/ubuntu1204-opsworks.box vmware/ubuntu1204-opsworks.box'
end
