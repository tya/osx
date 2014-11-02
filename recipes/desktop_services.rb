#
#  Cookbook Name: osx
#  Recipe Name: desktop_services
#
#  Copyright 2013-2014, Aeode Ltd <hello@aeode.com>
#  See the LICENSE file in the repository root for more information.
#

include_recipe 'osx::common'

osx_userdefaults "Desktop Services :: Don't create .DS_Store files on network shares" do
  domain 'com.apple.desktopservices'
  key 'DSDontWriteNetworkStores'
  type 'bool'
  value node['osx']['settings']['desktopservices']['disable_ds_store_network']
end
