#
# Cookbook Name:: ckrst
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'ckrst'
group 'vinicius'

user 'Vinícius Kirst' do
  username 'vinicius'
  group 'vinicius'
  system true
  password '$6$ZpYJHVCl$m3zIRAkIZJv41/Bj2jwEAUxCUslng2B0HaM3o6Ccw7c1yJLcCwLjsFN9h2otpQ0vEe0p1UPHavnp9AeZhtM020'
  shell '/bin/bash'
  home '/home/vinicius'
end
