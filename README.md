# vagrant-opsworks

The main goal of this project is building vagrant boxes for developing & testing cookbooks you plan to use in Amazon Opsworks.

At the moment the Opsworks agent will always provision your instances with a ruby 1.8.7 stack including a custom version of chef 11.4.4.

Use this project to build a Ubuntu 12.04 vagrant box provisioned with the ruby stack from opsworks agent release 208.

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

* Uses the latest release of ubuntu 12.04 LTS from http://releases.ubuntu.com/12.04/ubuntu-12.04.3-server-amd64.iso
* Ubuntu 12.04 ships with ruby 1.8.7 by default, install something like rbenv to provide ruby1.9 to your vagrant user if needed

# References
* Aws opsworks http://aws.amazon.com/opsworks/
* https://github.com/misheska/basebox-packer
* https://github.com/opscode/bento