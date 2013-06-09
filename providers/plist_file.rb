#
#  Cookbook Name: osx
#  Provider: plist_file
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#
action :create do
  file "#{ENV['HOME']}/Library/Preferences/#{new_resource.source}.lockfile" do
    action :delete
  end

  cookbook_file "#{ENV['HOME']}/Library/Preferences/#{new_resource.source}" do
    source new_resource.source
    cookbook new_resource.cookbook unless new_resource.cookbook.empty?
    ignore_failure true
  end
  new_resource.updated_by_last_action(true)
end
