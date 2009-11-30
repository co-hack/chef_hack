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

['taelor', 'penguincoder', 'rledge'].each do |username|
  user_data = node[:users][username]
  user username do
    puts user_data[:comment]
    comment user_data[:comment]
    uid user_data[:uid]
    home "/home/#{username}"
    shell "/bin/bash"
    supports :manage_home => true
    action [:create, :manage]
  end
end