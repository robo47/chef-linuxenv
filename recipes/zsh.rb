#
# Cookbook Name:: linuxenv
# Recipe:: zsh
#

include_recipe "apt"
include_recipe "apt::default"

## Setup ZSH as default shell for user vagrant and root, install oh-my-zsh

package "zsh" do
    action :install
end

git "/home/vagrant/.oh-my-zsh" do
    repository "https://github.com/robbyrussell/oh-my-zsh"
    action :checkout
    user "vagrant"
    group "vagrant"
end

script "make zsh default shell for users vagrant and root" do
    interpreter "bash"
    user "root"
    cwd "/tmp"
    code <<-EOH
        usermod -s /bin/zsh vagrant
        usermod -s /bin/zsh root
    EOH
end

script "install oh-my-zsh and configure theme" do
    interpreter "bash"
    user "vagrant"
    cwd "/tmp"
    creates "/home/vagrant/.zshrc"
    code <<-EOH
        echo "\n\nsource ~/.bash_aliases\n\n" >> /home/vagrant/.zshrc
        sed 's#ZSH_THEME="robbyrussell"#ZSH_THEME="ys"#g'  /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template > /home/vagrant/.zshrc
    EOH
end
