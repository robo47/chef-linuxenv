#
# Cookbook Name:: linuxenv
# Recipe:: bash
#

include_recipe "apt"
include_recipe "apt::default"

# bash and aliases

%w{bash bash-doc}.each do |pkg|
    package pkg do
        action :install
    end
end

cookbook_file "/home/vagrant/.bash_aliases" do
    source ".bash_aliases"
    mode "0644"
end