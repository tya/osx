#
#  Cookbook Name: osx
#  Recipe Name: login_window
#
#   Ensures that your contact details are shown on the login screen in the hope
#   that a good person will return your laptop if you lose it somewhere.
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

include_recipe "osx::common"

osx_userdefaults "Login Window :: Display a message saying who owns this system" do
  domain "/Library/Preferences/com.apple.loginwindow"
  key "LoginwindowText"
  value node['osx']['settings']['login_window']['message_text']
  only_if { node['osx']['settings']['login_window']['message_enabled'] }
  sudo true
end

execute "Login Window :: Update NVRAM so systems with FDE still see ownership message" do
  action :nothing
  command "sudo nvram good-samaritan-message='#{node['osx']['settings']['login_window']['message_text']}'"
  subscribes :run, resources(:osx_userdefaults => "Login Window :: Display a message saying who owns this system"), :immediately
  notifies :run, "execute[sudo touch /System/Library/Extensions]"
  notifies :run, "execute[sudo touch /System/Library/Caches/com.apple.corestorage/EFILoginLocalizations]"
  only_if { node['osx']['settings']['login_window']['message_nvram'] }
end

execute "sudo touch /System/Library/Extensions" do
  action :nothing
  only_if { File.exist?("/System/Library/Extensions") }
end

execute "sudo touch /System/Library/Caches/com.apple.corestorage/EFILoginLocalizations" do
  action :nothing
  only_if { File.exist?("/System/Library/Caches/com.apple.corestorage/EFILoginLocalizations") }
end

osx_userdefaults "Login Window :: Show additional info when clicking on clock" do
  domain "/Library/Preferences/com.apple.loginwindow"
  key "AdminHostInfo"
  type "string"
  value "HostInfo"
  only_if { node['osx']['settings']['login_window']['admin_info'] }
  sudo true
end
