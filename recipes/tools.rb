#
# Cookbook Name:: linuxenv
# Recipe:: tools
#

include_recipe "apt"
include_recipe "apt::default"

# NFS for nfs-based shares on linux (faster)


%w{portmap nfs-common}.each do |pkg|
    package pkg do
        action :install
    end
end

# monitoring tools

%w{atop htop mytop iotop iftop sysstat logtop apachetop slurm sniffit}.each do |pkg|
    package pkg do
        action :install
    end
end

# http tools and libraries

%w{wget curl lynx}.each do |pkg|
    package pkg do
        action :install
    end
end


# Other tools and stuff

%w{vim bash ack-grep ssl-cert acl tenshi}.each do |pkg|
    package pkg do
        action :install
    end
end

# other (d)vcs for composer 

%w{bzr bzrtools mercurial subversion}.each do |pkg|
    package pkg do
        action :install
    end
end