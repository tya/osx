#
#  Cookbook Name: osx
#  Recipe Name: menubar
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

include_recipe 'osx::common'

# We allow attributes to be specified in short form ("Volume").
# That then needs to be expanded to a full path before being passed to osx_userdefaults.
extras_exploded = []

node['osx']['settings']['menubar']['extras'].each do |item|
  extras_exploded.push("\"/System/Library/CoreServices/Menu Extras/#{item}.menu\"")
end

osx_userdefaults 'Menu Bar :: Determine which Apple items will appear in the Menu Bar' do
  domain 'com.apple.systemuiserver'
  key 'menuExtras'
  type 'array'
  value extras_exploded.each { |item| print "#{item} " }
  notifies :run, 'execute[killall SystemUIServer]', :delayed
end
