#
#  Cookbook Name: osx
#  Recipe Name: accessibility
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

include_recipe "osx::common"

osx_userdefaults "Accessibility :: Set the cursor to be #{node['osx']['settings']['accessibility']['cursor_size'].to_s}x normal size" do
  domain "com.apple.universalaccess"
  key "mouseDriverCursorSize"
  type "float"
  value node['osx']['settings']['accessibility']['cursor_size']
end

osx_userdefaults "Accessibility :: Zoom via keyboard shortcuts" do
  domain "com.apple.universalaccess"
  key "closeViewHotkeysEnabled"
  type "bool"
  value node['osx']['settings']['accessibility']['zoom_hotkeys']
end

osx_userdefaults "Accessibility :: Zoom with a combination of ^ Control and mouse scrolling" do
  domain "com.apple.universalaccess"
  key "closeViewScrollWheelToggle"
  type "bool"
  value node['osx']['settings']['accessibility']['zoom_scroll']
end

osx_userdefaults "Accessibility :: Attempt to smooth images when zoomed in" do
  domain "com.apple.universalaccess"
  key "closeViewSmoothImages"
  type "bool"
  value node['osx']['settings']['accessibility']['zoom_smooth_images']
end

osx_userdefaults "Accessibility :: Zoom Panning Mode" do
  domain "com.apple.universalaccess"
  key "closeViewPanningMode"
  type "int"
  value node['osx']['settings']['accessibility']['zoom_panning_mode']
end
