#
#  Cookbook Name: osx
#  Recipe Name: finder
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

include_recipe "osx::common"

osx_userdefaults "Finder :: Show internal hard drives on the Desktop" do
  domain "com.apple.finder"
  key "ShowHardDrivesOnDesktop"
  type "bool"
  value node['osx']['settings']['finder']['desktop']['showintharddrives']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Show removable media on the Desktop" do
  domain "com.apple.finder"
  key "ShowRemovableMediaOnDesktop"
  type "bool"
  value node['osx']['settings']['finder']['desktop']['showremovabledrives']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Show external hard drives on the Desktop" do
  domain "com.apple.finder"
  key "ShowExternalHardDrivesOnDesktop"
  type "bool"
  value node['osx']['settings']['finder']['desktop']['showextharddrives']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Show mounted servers on the Desktop" do
  domain "com.apple.finder"
  key "ShowMountedServersOnDesktop"
  type "bool"
  value node['osx']['settings']['finder']['desktop']['shownetworkdrives']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Show Hidden and Special Files" do
  domain "com.apple.finder"
  key "AppleShowAllFiles"
  type "bool"
  value node['osx']['settings']['finder']['window']['showallfiles']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Warning when changing file extensions" do
  domain "com.apple.finder"
  key "FXEnableExtensionChangeWarning"
  type "bool"
  value node['osx']['settings']['finder']['warnonextchange']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Ask for confirmation when emptying trash" do
  domain "com.apple.finder"
  key "WarnOnEmptyTrash"
  type "bool"
  value node['osx']['settings']['finder']['warnonemptytrash']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Securely delete items from Trash" do
  domain "com.apple.finder"
  key "EmptyTrashSecurely"
  type "bool"
  value node['osx']['settings']['finder']['securedelete']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Show POSIX path as Finder window title" do
  domain "com.apple.finder"
  key "_FXShowPosixPathInTitle"
  type "bool"
  value node['osx']['settings']['finder']['window']['showposixpath']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Show the Path Bar" do
  domain "com.apple.finder"
  key "ShowPathbar"
  type "bool"
  value node['osx']['settings']['finder']['window']['showpathbar']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults "Finder :: Show the Status Bar" do
  domain "com.apple.finder"
  key "ShowStatusBar"
  type "bool"
  value node['osx']['settings']['finder']['window']['showstatusbar']
  notifies :run, 'execute[killall Finder]', :delayed
end
