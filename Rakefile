namespace 'precise' do
    task 'virtualbox-build' => 'precise:clean' do
        system 'packer build -only=virtualbox-iso ubuntu12.04-opsworks.json'
    end

    task 'virtualbox-install' do
        system 'vagrant box remove ubuntu1204-opsworks --provider virtualbox'
        system 'vagrant box add ubuntu1204-opsworks virtualbox/ubuntu1204-opsworks.box'
    end

    task 'vmware-build' => 'precise:clean' do
        system 'packer build -only=vmware-iso ubuntu12.04-opsworks.json'
    end

    task 'vmware-install' do
        system 'vagrant box remove ubuntu1204-opsworks --provider vmware_desktop'
        system 'vagrant box add ubuntu1204-opsworks vmware/ubuntu1204-opsworks.box'
    end

    task 'clean' do
        system 'rm -f virtualbox/ubuntu1204-opsworks.box vmware/ubuntu1204-opsworks.box'
    end
end

namespace 'trusty' do
    task 'virtualbox-build' => 'trusty:clean' do
        system 'packer build -only=virtualbox-iso ubuntu14.04-opsworks.json'
    end

    task 'virtualbox-install' do
        system 'vagrant box remove ubuntu1404-opsworks --provider virtualbox'
        system 'vagrant box add ubuntu1404-opsworks virtualbox/ubuntu1404-opsworks.box'
    end

    task 'vmware-build' => 'trusty:clean' do
        system 'packer build -only=vmware-iso ubuntu14.04-opsworks.json'
    end

    task 'vmware-install' do
        system 'vagrant box remove ubuntu1404-opsworks --provider vmware_desktop'
        system 'vagrant box add ubuntu1404-opsworks vmware/ubuntu1404-opsworks.box'
    end

    task 'clean' do
        system 'rm -f virtualbox/ubuntu1404-opsworks.box vmware/ubuntu1404-opsworks.box'
    end
end

task 'virtualbox-build'   => 'trusty:virtualbox-build'
task 'virtualbox-install' => 'trusty:virtualbox-install'
task 'vmware-build'       => 'trusty:vmware-build'
task 'vmware-install'     => 'trusty:vmware-install'
task 'clean' => ['precise:clean', 'trusty:clean']
