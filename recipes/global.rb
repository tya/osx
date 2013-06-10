#
#  Cookbook Name: osx
#  Recipe Name: global
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  See the LICENSE file in the repository root for more information.
#

include_recipe "osx::common"

osx_userdefaults "OSX Global Settings :: Expanded Save Dialogs" do
  domain "NSGlobalDomain"
  key "NSNavPanelExpandedStateForSaveMode"
  type "bool"
  value node['osx']['settings']['global']['expanded-save-dialogs']
end

osx_userdefaults "OSX Global Settings :: Expanded Print Dialogs" do
  domain "NSGlobalDomain"
  key "PMPrintingExpandedStateForPrint"
  type "bool"
  value node['osx']['settings']['global']['expanded-print-dialogs']
end

osx_userdefaults "OSX Global Settings :: Menu Bar Transparency" do
  domain "NSGlobalDomain"
  key "AppleEnableMenuBarTransparency"
  type "bool"
  value node['osx']['settings']['global']['menubar-transparency']
end

osx_userdefaults "OSX Global Settings :: Subpixel smoothing on 3rd party displays" do
  domain "NSGlobalDomain"
  key "AppleFontSmoothing"
  type "int"
  value node['osx']['settings']['global']['subpixel-third-party']
end

osx_userdefaults "OSX Global Settings :: Resuming applications where you left off?" do
  domain "NSGlobalDomain"
  key "NSQuitAlwaysKeepWindows"
  type "bool"
  value node['osx']['settings']['global']['resume-applications']
end

osx_userdefaults "OSX Global Settings :: Animations for New Windows" do
  domain "NSGlobalDomain"
  key "NSAutomaticWindowAnimationsEnabled"
  type "bool"
  value node['osx']['settings']['global']['new-window-animations']
end

osx_userdefaults "OSX Global Settings :: Automatic Spelling Correction" do
  domain "NSGlobalDomain"
  key "NSAutomaticSpellingCorrectionEnabled"
  type "bool"
  value node['osx']['settings']['global']['automatic-spellcheck']
end

