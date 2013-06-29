#
#  Cookbook Name: osx
#  Attributes: default
#
#  Copyright 2013, Alex Howells <alex@howells.me>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

default['osx']['settings_user'] = node['current_user']
default['osx']['settings'] = {}

# Owner Information
default['owner']['name'] = "Unknown Name"     # Used to print a 'good samaritan'
default['owner']['email'] = "unknown@email"   # message on the login screen.
default['owner']['company'] = "Thank You"

# Accessibility
default['osx']['settings']['accessibility']['cursor_size'] = '1.5'
default['osx']['settings']['accessibility']['zoom_hotkeys'] = true
default['osx']['settings']['accessibility']['zoom_scroll'] = true
default['osx']['settings']['accessibility']['zoom_smooth_images'] = true
default['osx']['settings']['accessibility']['zoom_panning_mode'] = '0'

# Desktop Services
default['osx']['settings']['desktopservices']['disable_ds_store_network'] = true

# Dock
default['osx']['settings']['dock']['autohide'] = true
default['osx']['settings']['dock']['magnification'] = true
default['osx']['settings']['dock']['minimize-to-app'] = true
default['osx']['settings']['dock']['process-indicators'] = true
default['osx']['settings']['dock']['flat-2d-style'] = false
default['osx']['settings']['dock']['shadows'] = false
default['osx']['settings']['dock']['minimize_effect'] = "scale"
default['osx']['settings']['dock']['iconsize_normal'] = '40'
default['osx']['settings']['dock']['iconsize_magnified'] = '96'
default['osx']['settings']['dock']['disable_spaces_swoosh'] = true

# Finder
default['osx']['settings']['finder']['warnonextchange'] = false
default['osx']['settings']['finder']['warnonemptytrash'] = false
default['osx']['settings']['finder']['securedelete'] = true
default['osx']['settings']['finder']['desktop']['showintharddrives'] = false
default['osx']['settings']['finder']['desktop']['showremovabledrives'] = false
default['osx']['settings']['finder']['desktop']['showextharddrives'] = false
default['osx']['settings']['finder']['desktop']['shownetworkdrives'] = false
default['osx']['settings']['finder']['window']['showallfiles'] = false
default['osx']['settings']['finder']['window']['showposixpath'] = true
default['osx']['settings']['finder']['window']['showpathbar'] = true
default['osx']['settings']['finder']['window']['showstatusbar'] = true

# Firewall
default['osx']['settings']['firewall']['enabled'] = true

# Global Settings
default['osx']['settings']['global']['expanded-save-dialogs'] = true
default['osx']['settings']['global']['expanded-print-dialogs'] = true
default['osx']['settings']['global']['menubar-transparency'] = true
default['osx']['settings']['global']['subpixel-third-party'] = '2'
default['osx']['settings']['global']['resume-applications'] = false
default['osx']['settings']['global']['new-window-animations'] = false
default['osx']['settings']['global']['automatic-spellcheck'] = false

# Keyboard / Input
default['osx']['settings']['keyboard']['accented-chars-on-hold'] = false
default['osx']['settings']['keyboard']['repeat-delay'] = '15'
default['osx']['settings']['keyboard']['repeat-rate'] = '0.02'

# Launch Services
default['osx']['settings']['launchservices']['quarantine'] = false

# Login Window
default['osx']['settings']['login_window']['message_enabled'] = true
default['osx']['settings']['login_window']['message_nvram'] = true
default['osx']['settings']['login_window']['message_text'] = "#{node.owner.name} :: If found please e-mail '#{node.owner.email}' :: #{node.owner.company}"

# Screensaver
default['osx']['settings']['screensaver']['enabled'] = true
default['osx']['settings']['screensaver']['require_password'] = true
default['osx']['settings']['screensaver']['password_delay'] = '0'

# Time Machine
default['osx']['settings']['time_machine']['unsupported_volumes'] = true
