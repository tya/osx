#
#  Cookbook Name: osx
#  Attributes: default
#
#  Copyright 2013, Aeode Ltd <hello@aeode.com>
#  Copyright 2011, Joshua Timberman <opensource@housepub.org>
#  See the LICENSE file in the repository root for more information.
#

node.default['osx']['settings_user'] = node['current_user']
node.default['osx']['settings'] = {}

# Owner Information
node.default['owner']['name'] = 'Unknown Name'     # Used to print a 'good samaritan'
node.default['owner']['email'] = 'unknown@email'   # message on the login screen.
node.default['owner']['company'] = 'Thank You'

# Accessibility
node.default['osx']['settings']['accessibility']['cursor_size'] = '1.5'
node.default['osx']['settings']['accessibility']['zoom_hotkeys'] = true
node.default['osx']['settings']['accessibility']['zoom_scroll'] = true
node.default['osx']['settings']['accessibility']['zoom_smooth_images'] = true
node.default['osx']['settings']['accessibility']['zoom_panning_mode'] = '0'

# Desktop Services
node.default['osx']['settings']['desktopservices']['disable_ds_store_network'] = true

# Dock
node.default['osx']['settings']['dock']['autohide'] = true
node.default['osx']['settings']['dock']['magnification'] = true
node.default['osx']['settings']['dock']['minimize-to-app'] = true
node.default['osx']['settings']['dock']['process-indicators'] = true
node.default['osx']['settings']['dock']['flat-2d-style'] = false
node.default['osx']['settings']['dock']['shadows'] = false
node.default['osx']['settings']['dock']['minimize_effect'] = 'scale'
node.default['osx']['settings']['dock']['iconsize_normal'] = '40'
node.default['osx']['settings']['dock']['iconsize_magnified'] = '96'
node.default['osx']['settings']['dock']['disable_spaces_swoosh'] = true
node.default['osx']['settings']['dock']['orientation'] = 'bottom'		# options: bottom, left, right

# Finder
node.default['osx']['settings']['finder']['allow-quit'] = true
node.default['osx']['settings']['finder']['warnonextchange'] = false
node.default['osx']['settings']['finder']['warnonemptytrash'] = false
node.default['osx']['settings']['finder']['securedelete'] = true
node.default['osx']['settings']['finder']['desktop']['showintharddrives'] = false
node.default['osx']['settings']['finder']['desktop']['showremovabledrives'] = false
node.default['osx']['settings']['finder']['desktop']['showextharddrives'] = false
node.default['osx']['settings']['finder']['desktop']['shownetworkdrives'] = false
node.default['osx']['settings']['finder']['window']['showallfiles'] = false
node.default['osx']['settings']['finder']['window']['showposixpath'] = true
node.default['osx']['settings']['finder']['window']['showpathbar'] = true
node.default['osx']['settings']['finder']['window']['showstatusbar'] = true
node.default['osx']['settings']['finder']['window']['viewing-mode'] = 'Nlsv'

# Firewall
node.default['osx']['settings']['firewall']['enabled'] = true

# Global Settings
node.default['osx']['settings']['global']['expanded-save-dialogs'] = true
node.default['osx']['settings']['global']['expanded-print-dialogs'] = true
node.default['osx']['settings']['global']['menubar-transparency'] = true
node.default['osx']['settings']['global']['subpixel-third-party'] = '2'
node.default['osx']['settings']['global']['resume-applications'] = false
node.default['osx']['settings']['global']['new-window-animations'] = false
node.default['osx']['settings']['global']['automatic-spellcheck'] = false
node.default['osx']['settings']['global']['sidebar-icon-size'] = '1'
node.default['osx']['settings']['global']['highlight-color'] = '0.764700 0.976500 0.568600'
node.default['osx']['settings']['global']['scrollbars-visibility'] = 'WhenScrolling'

# Help Viewer
node.default['osx']['settings']['helpviewer']['devmode'] = true

# Keyboard / Input
node.default['osx']['settings']['keyboard']['accented-chars-on-hold'] = false
node.default['osx']['settings']['keyboard']['repeat-delay'] = '15'
node.default['osx']['settings']['keyboard']['repeat-rate'] = '0.02'

# Launch Services
node.default['osx']['settings']['launchservices']['quarantine'] = false

# Locate Service
node.default['osx']['settings']['locate']['enabled'] = true

# Login Window
node.default['osx']['settings']['login_window']['message_enabled'] = true
node.default['osx']['settings']['login_window']['message_nvram'] = true
node.default['osx']['settings']['login_window']['message_text'] = "#{node.owner.name} :: If found please e-mail '#{node.owner.email}' :: #{node.owner.company}"
node.default['osx']['settings']['login_window']['admin_info'] = true

# Menu Bar
# Options -> "AirPort", "Battery", "Bluetooth", "Clock", "Displays", "Eject", "RemoteDesktop",
#             "TextInput", "TimeMachine", "UniversalAccess", "User", "VPN", "Volume"
node.default['osx']['settings']['menubar']['extras'] = %w(AirPort Bluetooth Volume)

# Screensaver
node.default['osx']['settings']['screensaver']['enabled'] = true
node.default['osx']['settings']['screensaver']['require_password'] = true
node.default['osx']['settings']['screensaver']['password_delay'] = '0'

# Software Update
node.default['osx']['settings']['software_updates']['automatic_check'] = true
node.default['osx']['settings']['software_updates']['automatic_download'] = true
node.default['osx']['settings']['software_updates']['automatic_install_configdata'] = true
node.default['osx']['settings']['software_updates']['automatic_install_critical'] = true
node.default['osx']['settings']['software_updates']['search_frequency'] = '1'

# Time Machine
node.default['osx']['settings']['time_machine']['unsupported_volumes'] = true
node.default['osx']['settings']['time_machine']['disable_offer_new_disks_for_backup'] = true
