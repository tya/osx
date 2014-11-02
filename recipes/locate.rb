#
#  Cookbook Name: osx
#  Recipe Name: menubar
#
#  Copyright 2013-2014, Aeode Ltd <hello@aeode.com>
#  See the LICENSE file in the repository root for more information.
#

service "com.apple.locate" do
  action :start
  only_if node['osx']['settings']['locate']['enabled']
end
