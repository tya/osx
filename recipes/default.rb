#
#  Cookbook Name: osx
#  Recipe: default
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#
execute "killall Dock" do
  action :nothing
end
