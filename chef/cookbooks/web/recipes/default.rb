#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/APPS"

include_recipe 'apache2'
include_recipe 'apache2::mod_alias'
include_recipe 'apache2::mod_php5'
include_recipe 'apache2::mod_ssl'
