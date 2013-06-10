# 'osx' Cookbook

### Description

Right now this cookbook provides two resources for managing local user settings on OSX.

  * `osx_plist_file` - manages "`plist`" settings files for OS X applications.
  * `osx_userdefaults` - manages settings in OS X's `defaults(1)` system.

This cookbook also includes an opinionated set of helper recipes which will
tweak and tune some common system preferences. All settings are accessible via
attributes and the defaults work for me, but may not be to your taste.

## To Do

  * Documentation. I pretty much nuked README.md and need to update it to reflect what's up.
  * More helper recipes covering a wider array of system settings.

## License and Author

* Author: Alex Howells (<alex@howells.me>)
* Author: Joshua Timberman (<cookbooks@housepub.org>)
* Author: Ben Bleything (<ben@bleything.net>)

* Copyright 2013, Alex Howells
* Copyright 2011-2013, Joshua Timberman

Licensed under the Apache License, Version 2.0
See the LICENSE file within this repository for more information.
