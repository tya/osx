#
#  Cookbook Name: osx
#  Recipe Name: screensaver
#
#  Copyright 2013-2014, Aeode Ltd <hello@aeode.com>
#  See the LICENSE file in the repository root for more information.
#

include_recipe 'osx::common'

osx_userdefaults 'Screensaver :: Require password to get out of screensaver' do
  domain 'com.apple.screensaver'
  key 'askForPassword'
  type 'bool'
  value node['osx']['settings']['screensaver']['require_password']
end

osx_userdefaults 'Screensaver :: Wait delay after screensaver starts before password required' do
  domain 'com.apple.screensaver'
  key 'askForPasswordDelay'
  type 'int'
  value node['osx']['settings']['screensaver']['password_delay']
end
