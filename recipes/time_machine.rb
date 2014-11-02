#
#  Cookbook Name: osx
#  Recipe Name: time_machine
#
#  Copyright 2013-2014, Aeode Ltd <hello@aeode.com>
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

osx_userdefaults 'Time Machine :: Do not offer new disks for backup purposes' do
  domain 'com.apple.TimeMachine'
  key 'DoNotOfferNewDisksForBackup'
  type 'bool'
  value node['osx']['settings']['time_machine']['disable_offer_new_disks_for_backup']
end
