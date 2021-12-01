# This module depends on the Doxygen .tag file for libstdc++.
#
# If libstdc++ in the base system was built with documentation enabled,
# we can get this file from the base system.
#
# mm-common's build system provides the option of download the file, in
# case it's not available in the base system. At time of writing this
# comment, the build system fetched the file from here:
#
#   http://gcc.gnu.org/onlinedocs/libstdc++/latest-doxygen/libstdc++.tag
#
# BuildStream requires that all downloads are done outside the sandbox.
# In theory we could inject the remote file into the sandbox but BuildStream
# currently lacks an appropriate source plugin:
#
#   https://gitlab.com/BuildStream/buildstream/issues/163

kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/mm-common.git
  track: master
- kind: local
  path: files/mm-common/libstdc++.tag
  directory: doctags/
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Duse-network=false
