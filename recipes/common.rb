#
#  Cookbook Name: osx
#  Recipe: common
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

execute "killall Dock" do
  action :nothing
end

execute "killall Finder" do
  action :nothing
end

execute "killall SystemUIServer" do
  action :nothing
end
