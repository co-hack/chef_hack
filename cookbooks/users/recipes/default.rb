#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2009, Example Com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#users Mash.new unless attribute?("users")
#groups Mash.new unless attribute?("groups")
#ssh_keys Mash.new unless attribute?("ssh_keys")
#roles Mash.new unless attribute?("roles")
 
#groups[:app] = {:gid => 5000}
#groups[:site] = {:gid => 6000}
#groups[:admin] = {:gid => 7000}
 
#roles[:chef] = {:groups => [:admin], :sudo_groups => [:admin]}
#roles[:app] = {:groups => [:admin, :app], :sudo_groups => [:admin]}
 
# passwords must be in shadow password format with a salt. To generate: openssl passwd -1
 
users[:taelor] = {:password => "shadowpass", :comment => "Taylor Redden", :uid => 4001, :group => :admin}
users[:pengiuncoder] = {:password => "shadowpass", :comment => "Andrew Coleman", :uid => 4002, :group => :admin}
users[:rledge] = {:password => "shadowpass", :comment => "Ralph Edge", :uid => 4003, :group => :admin}
 
#ssh_keys[:jose] = "ssh-dss keydata"
#ssh_keys[:francisco] = "ssh-rsa keydata"