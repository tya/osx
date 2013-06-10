#
#  Cookbook Name: osx
#  Recipe Name: launch_services
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

include_recipe "osx::common"

osx_userdefaults "Launch Services :: Quarantine applications downloaded from the Internet" do
  domain "com.apple.LaunchServices"
  key "LSQuarantine"
  type "bool"
  value node['osx']['settings']['launchservices']['quarantine']
end
