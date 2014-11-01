#
#  Cookbook Name: osx
#  Recipe Name: keyboard
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

include_recipe 'osx::common'

osx_userdefaults "Keyboard Settings :: 'Press and Hold' for accented characters" do
  domain 'NSGlobalDomain'
  key 'ApplePressAndHoldEnabled'
  type 'bool'
  value node['osx']['settings']['keyboard']['accented-chars-on-hold']
end

osx_userdefaults 'Keyboard Settings :: Repeat Delay' do
  domain 'NSGlobalDomain'
  key 'InitialKeyRepeat'
  type 'int'
  value node['osx']['settings']['keyboard']['repeat-delay']
end

osx_userdefaults 'Keyboard Settings :: Repeat Rate' do
  domain 'NSGlobalDomain'
  key 'KeyRepeat'
  type 'float'
  value node['osx']['settings']['keyboard']['repeat-rate']
end
