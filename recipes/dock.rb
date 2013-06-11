#
#  Cookbook Name: osx
#  Recipe Name: dock
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

include_recipe "osx::common"

osx_userdefaults "Dock :: Automatically hide the dock?" do
  domain "com.apple.dock"
  key "autohide"
  type "bool"
  value node['osx']['settings']['dock']['autohide']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Enable dock magnification on mouse over?" do
  domain "com.apple.dock"
  key "magnification"
  type "bool"
  value node['osx']['settings']['dock']['magnification']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Minimize applications into their dock launcher?" do
  domain "com.apple.dock"
  key "minimize-to-application"
  type "bool"
  value node['osx']['settings']['dock']['minimize-to-app']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Show the indicator lights under running applications?" do
  domain "com.apple.dock"
  key "show-process-indicators"
  type "bool"
  value node['osx']['settings']['dock']['process-indicators']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Use a flat 2D style?" do
  domain "com.apple.dock"
  key "no-glass"
  type "bool"
  value node['osx']['settings']['dock']['flat-2d-style']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Show shadows behind items?" do
  domain "com.apple.dock"
  key "showshadow"
  type "bool"
  value node['osx']['settings']['dock']['shadows']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Apply the 'scale' effect to minimizing applications" do
  domain "com.apple.dock"
  key "mineffect"
  type "string"
  value node['osx']['settings']['dock']['minimize_effect']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Icon Size (Normal)" do
  domain "com.apple.dock"
  key "tilesize"
  type "int"
  value node['osx']['settings']['dock']['iconsize_normal']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Icon Size (Magnified)" do
  domain "com.apple.dock"
  key "largesize"
  type "int"
  value node['osx']['settings']['dock']['iconsize_magnified']
  notifies :run, 'execute[killall Dock]', :delayed
end

osx_userdefaults "Dock :: Disable animated transition between Spaces" do
  domain "com.apple.dock"
  key "workspaces-swoosh-animation-off"
  type "bool"
  value node['osx']['settings']['dock']['disable_spaces_swoosh']
  notifies :run, 'execute[killall Dock]', :delayed
end
