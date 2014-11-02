#
#  Cookbook Name: osx
#  Recipe Name: finder
#
#  Copyright 2013-2014, Aeode Ltd <hello@aeode.com>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

include_recipe 'osx::common'

osx_userdefaults 'Finder :: Show internal hard drives on the Desktop' do
  domain 'com.apple.finder'
  key 'ShowHardDrivesOnDesktop'
  type 'bool'
  value node['osx']['settings']['finder']['desktop']['showintharddrives']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Show removable media on the Desktop' do
  domain 'com.apple.finder'
  key 'ShowRemovableMediaOnDesktop'
  type 'bool'
  value node['osx']['settings']['finder']['desktop']['showremovabledrives']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Show external hard drives on the Desktop' do
  domain 'com.apple.finder'
  key 'ShowExternalHardDrivesOnDesktop'
  type 'bool'
  value node['osx']['settings']['finder']['desktop']['showextharddrives']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Show mounted servers on the Desktop' do
  domain 'com.apple.finder'
  key 'ShowMountedServersOnDesktop'
  type 'bool'
  value node['osx']['settings']['finder']['desktop']['shownetworkdrives']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Show Hidden and Special Files' do
  domain 'com.apple.finder'
  key 'AppleShowAllFiles'
  type 'bool'
  value node['osx']['settings']['finder']['window']['showallfiles']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Warning when changing file extensions' do
  domain 'com.apple.finder'
  key 'FXEnableExtensionChangeWarning'
  type 'bool'
  value node['osx']['settings']['finder']['warnonextchange']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Ask for confirmation when emptying trash' do
  domain 'com.apple.finder'
  key 'WarnOnEmptyTrash'
  type 'bool'
  value node['osx']['settings']['finder']['warnonemptytrash']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Securely delete items from Trash' do
  domain 'com.apple.finder'
  key 'EmptyTrashSecurely'
  type 'bool'
  value node['osx']['settings']['finder']['securedelete']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Show POSIX path as Finder window title' do
  domain 'com.apple.finder'
  key '_FXShowPosixPathInTitle'
  type 'bool'
  value node['osx']['settings']['finder']['window']['showposixpath']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Show the Path Bar' do
  domain 'com.apple.finder'
  key 'ShowPathbar'
  type 'bool'
  value node['osx']['settings']['finder']['window']['showpathbar']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Show the Status Bar' do
  domain 'com.apple.finder'
  key 'ShowStatusBar'
  type 'bool'
  value node['osx']['settings']['finder']['window']['showstatusbar']
  notifies :run, 'execute[killall Finder]', :delayed
end

# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`, `Nlsv`
osx_userdefaults 'Finder :: Set the viewing style for default windows' do
  domain 'com.apple.finder'
  key 'FXPreferredViewStyle'
  type 'string'
  value node['osx']['settings']['finder']['window']['viewing-mode']
  notifies :run, 'execute[killall Finder]', :delayed
end

osx_userdefaults 'Finder :: Allow the user to CMD+Q to quit the Finder application' do
  domain 'com.apple.finder'
  key 'QuitMenuItem'
  type 'bool'
  value node['osx']['settings']['finder']['allow-quit']
  notifies :run, 'execute[killall Finder]', :delayed
end
