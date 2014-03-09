#
# Cookbook Name:: linuxenv
# Recipe:: php55
#

include_recipe "apt"
include_recipe "apt::default"

apt_repository "php5" do
    uri "http://ppa.launchpad.net/ondrej/php5/ubuntu"
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "E5267A6C"
end

script "apt-get update" do
    interpreter "bash"
    user "root"
    cwd "/tmp"
    code <<-EOH
        apt-get update
    EOH
end
