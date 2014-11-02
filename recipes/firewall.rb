#
#  Cookbook Name: osx
#  Recipe Name: firewall
#
#  Copyright 2013-2014, Aeode Ltd <hello@aeode.com>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

include_recipe 'osx::common'

osx_userdefaults 'Firewall :: System firewall enabled for inbound connections' do
  domain '/Library/Preferences/com.apple.alf'
  key 'globalstate'
  type 'bool'
  value node['osx']['settings']['firewall']['enabled']
  sudo true
end
