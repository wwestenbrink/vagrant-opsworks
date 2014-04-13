# vagrant-opsworks

The main goal of this project is building vagrant boxes for developing & testing cookbooks you plan to use in Amazon Opsworks.

Use this project to build a Ubuntu 12.04.4 LTS box provisioned with opsworks ruby2.0.0-p451 and chef 11.10.4 from agent release 306.

You may have noticed the new opsworks agent using chef-client with chef-zero now, be aware this box only provides chef-solo.

The previous release of this project (for opsworks chef version 11.4.4) is preserved in the chef-11.4 branch.

# Dependencies

* packer http://www.packer.io/
* virtualbox https://www.virtualbox.org/ or vmware fusion http://www.vmware.com/products/fusion/
* vagrant http://www.vagrantup.com/
* rake http://rake.rubyforge.org/

# Usage

    # build the vagrant virtual box
    rake virtualbox-build

    # install the vagrant virtual box
    rake virtualbox-install

    # build the vagrant vmware box
    rake vmware-build

    # install the vagrant vmware box
    rake vmware-install

    # check out your new box with provided Vagrant file
    vagrant up [--provider=vmware_fusion]

    # clean up builded boxes
    rake clean
# Notes

* Uses the latest release of ubuntu 12.04 LTS from http://releases.ubuntu.com/12.04/ubuntu-12.04.4-server-amd64.iso
* use Virtualbox 4.2.x for compatibility with Vagrant 1.4.x

# References
* Aws opsworks http://aws.amazon.com/opsworks/
* https://github.com/misheska/basebox-packer
* https://github.com/opscode/bento
