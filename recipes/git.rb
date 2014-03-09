#
# Cookbook Name:: linuxenv
# Recipe:: git
#

include_recipe "apt"
include_recipe "apt::default"

## git

%w{git-core git-svn git-stuff git-sh git-man git-doc}.each do |pkg|
    package pkg do
        action :install
    end
end