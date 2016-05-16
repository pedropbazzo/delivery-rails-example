#
# Cookbook Name:: build-cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'delivery-truck::default'

src_dir = File.expand_path("#{node['delivery']['workspace']['repo']}")

execute "run bundler" do
  command "bundle install"
  creates "#{src_dir}/Gem.lock"

  action :run
end
