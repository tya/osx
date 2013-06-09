#
#  Cookbook Name: osx
#  Attributes: default
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

node.default['osx']['settings_user'] = node['current_user']
node.default['osx']['settings'] = {}
