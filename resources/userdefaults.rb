#
#  Cookbook Name: osx
#  Provider: userdefaults
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

actions :write

attribute :domain, :kind_of => String, :name_attribute => true, :required => true
attribute :global, :kind_of => [TrueClass, FalseClass], :default => false
attribute :key, :kind_of => String, :default => nil
attribute :value, :kind_of => [Integer,Float,String,TrueClass,FalseClass,Hash,Array], :default => nil, :required => true
attribute :type, :kind_of => String, :default => nil
attribute :user, :kind_of => String, :default => nil
attribute :sudo, :kind_of => [TrueClass, FalseClass], :default => false
attribute :is_set, :kind_of => [TrueClass, FalseClass], :default => false

def initialize(*args)
  super
  @action = :write
end
