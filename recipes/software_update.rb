#
#  Cookbook Name: osx
#  Recipe Name: software_update
#
#  Copyright 2013-2014, Aeode Ltd <hello@aeode.com>
#  See the LICENSE file in the repository root for more information.
#

osx_userdefaults 'Software Update :: Automatic Search Updates' do
  domain '/Library/Preferences/com.apple.SoftwareUpdate'
  key 'AutomaticCheckEnabled'
  type 'bool'
  value node['osx']['settings']['software_updates']['automatic_check']
  sudo true
end

osx_userdefaults 'Software Update :: Update Search Frequency' do
  domain '/Library/Preferences/com.apple.SoftwareUpdate'
  key 'ScheduleFrequency'
  type 'int'
  value node['osx']['settings']['software_updates']['search_frequency']
  sudo true
end

osx_userdefaults 'Software Update :: Automatically Download Updates' do
  domain '/Library/Preferences/com.apple.SoftwareUpdate'
  key 'AutomaticDownload'
  type 'bool'
  value node['osx']['settings']['software_updates']['automatic_download']
  sudo true
end

osx_userdefaults 'Software Update :: Install Config & System Data Updates Automatically' do
  domain '/Library/Preferences/com.apple.SoftwareUpdate'
  key 'ConfigDataInstall'
  type 'bool'
  value node['osx']['settings']['software_updates']['automatic_install_configdata']
  sudo true
end

osx_userdefaults 'Software Update :: Install Critical Updates Automatically' do
  domain '/Library/Preferences/com.apple.SoftwareUpdate'
  key 'CriticalUpdateInstall'
  type 'bool'
  value node['osx']['settings']['software_updates']['automatic_install_critical']
  sudo true
end
