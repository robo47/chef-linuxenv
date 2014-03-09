#
# Cookbook Name:: linuxenv
# Recipe:: default
#

include_recipe "apt"
include_recipe "apt::default"

include_recipe "linuxenv::sudo"
include_recipe "linuxenv::tools"
include_recipe "linuxenv::ant"
include_recipe "linuxenv::git"
include_recipe "linuxenv::zsh"
include_recipe "linuxenv::bash"
include_recipe "linuxenv::php55"
include_recipe "linuxenv::php_cli"
include_recipe "linuxenv::php_composer"