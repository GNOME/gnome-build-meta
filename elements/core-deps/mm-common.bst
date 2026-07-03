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
- kind: git_repo
  url: gnome:mm-common.git
  track: master
  ref: 1.0.8-0-gd65ca87da271ddc84fd13f6dca0b2ec51dd8cc34
- kind: local
  path: files/mm-common/libstdc++.tag
  directory: doctags/

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Duse-network=false
