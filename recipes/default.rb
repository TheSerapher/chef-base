#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2013 Sebastian Grewe <sebastian.grewe@gmail.com>
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

include_recipe 'up2date'
include_recipe 'chef-client'
include_recipe 'chef-client::config'
include_recipe 'users'
include_recipe 'users::sysadmins'
include_recipe 'ntp'
include_recipe 'openssh'
include_recipe 'sudo'
include_recipe 'icinga::client'
