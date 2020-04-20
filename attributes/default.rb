#
# Author:: Seth Chisamore (<schisamo@chef.io>)
# Cookbook:: iis
# Attribute:: default
#
# Copyright:: 2011-2016, Chef Software, Inc.
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

default['iis']['home']       = "#{ENV['WINDIR']}\\System32\\inetsrv"
default['iis']['conf_dir']   = "#{ENV['WINDIR']}\\System32\\inetsrv\\config"
default['iis']['pubroot']    = "#{ENV['SYSTEMDRIVE']}\\inetpub"
default['iis']['docroot']    = "#{ENV['SYSTEMDRIVE']}\\inetpub\\wwwroot"
default['iis']['cache_dir']  = "#{ENV['SYSTEMDRIVE']}\\inetpub\\temp"
default['iis']['components'] = ['Web-WebServer', 'Web-Common-Http', 'Web-Default-Doc', 'Web-Dir-Browsing', 'Web-Http-Errors', 'Web-Static-Content', 'Web-Http-Redirect', 'Web-Health', 'Web-Http-Logging', 
'Web-Log-Libraries', 'Web-Request-Monitor', 'Web-Http-Tracing', 'Web-Performance', 'Web-Stat-Compression', 'Web-Dyn-Compression', 'Web-Security', 'Web-Filtering', 'Web-Basic-Auth', 'Web-Windows-Auth', 
'Web-App-Dev', 'Web-Net-Ext45', 'Web-AppInit', 'Web-ASP', 'Web-Asp-Net45', 'Web-ISAPI-Ext', 'Web-ISAPI-Filter', 'Web-Mgmt-Tools', 'Web-Mgmt-Console', 'Web-Scripting-Tools', 'Web-Mgmt-Service']

default['iis']['source'] = nil

default['iis']['recycle']['log_events'] = 'Time, Requests, Schedule, Memory, IsapiUnhealthy, OnDemand, ConfigChange, PrivateMemory'
