#
#  Cookbook Name: osx
#  Recipe Name: time_machine_nas
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#
osx_userdefaults "Enable Time Machine to work with NAS" do
  domain "com.apple.systempreference"
  key "TMShowUnsupportedNetworkVolumes"
  value "1"
end
