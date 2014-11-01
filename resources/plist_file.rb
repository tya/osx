#
#  Cookbook Name: osx
#  Provider: plist_file
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

actions :create

attribute :source, kind_of: String, name_attribute: true
attribute :cookbook, kind_of: String, default: ''

def initialize(*args)
  super
  @action = :create
end
