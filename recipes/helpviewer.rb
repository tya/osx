#
#  Cookbook Name: osx
#  Recipe Name: helpviewer
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

osx_userdefaults "Help :: Don't keep the viewer on top of all other windows" do
  domain "com.apple.helpviewer"
  key "DevMode"
  type "bool"
  value node['osx']['settings']['helpviewer']['devmode']
end


