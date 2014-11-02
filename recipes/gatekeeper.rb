#
#  Cookbook Name: osx
#  Recipe Name: gatekeeper
#
#  Copyright 2014, Aeode Ltd <hello@aeode.com>
#  See the LICENSE file in the repository root for more information.
#
case %x[spctl --status]
when "assessments enabled"
  GATEKEEPER_ENABLED = true
when "assessments disabled"
  GATEKEEPER_ENABLED = false
end

execute "Gatekeeper :: Only permit installing applications from Mac App Store" do
  command 'spctl --master-enable'
  sudo true
  only_if node['osx']['settings']['gatekeeper']['enabled'] = true
  only_if GATEKEEPER_ENABLED = false
end

execute "Gatekeeper :: Allow installing applications from anywhere" do
  command 'spctl --master-disable'
  sudo true
  only_if node['osx']['settings']['gatekeeper']['enabled'] = false
  only_if GATEKEEPER_ENABLED = true
end
