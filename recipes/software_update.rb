#
#  Cookbook Name: osx
#  Recipe Name: software_update
#
#  Copyright 2014, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

osx_userdefaults 'Software Update :: Manage whether automatic updates are enabled' do
  domain '/Library/Preferences/com.apple.SoftwareUpdate'
  key 'AutomaticCheckEnabled'
  type 'int'
  value node['osx']['settings']['software_updates']['automatic']
  sudo true
end
