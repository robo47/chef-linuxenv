#
# Cookbook Name:: linuxenv
# Recipe:: ant
#

include_recipe "apt"
include_recipe "apt::default"

# ant and ant-contrib

%w{ant ant-contrib}.each do |pkg|
    package pkg do
        action :install
    end
end