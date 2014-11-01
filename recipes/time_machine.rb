#
#  Cookbook Name: osx
#  Recipe Name: time_machine
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

include_recipe 'osx::common'

osx_userdefaults 'Time Machine :: Allow unsupported storage in NAS format' do
  domain 'com.apple.systempreference'
  key 'TMShowUnsupportedNetworkVolumes'
  type 'bool'
  value node['osx']['settings']['time_machine']['unsupported_volumes']
end
