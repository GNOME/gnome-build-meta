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


kind: autotools

sources:
- url: https://download.gnome.org/sources/mm-common/0.9/mm-common-0.9.11.tar.xz
  kind: tar
  ref: 20d1e7466ca4c83c92e29f9e8dfcc8e5721fdf1337f53157bed97be3b73b32a8

(?):
- base == 'freedesktop1.8':
    sources:
      (>):
        - kind: local
          path: files/mm-common/libstdc++.tag
          directory: doctags/

depends:
- base.bst
variables:
  conf-local: --disable-network
config:
  (?):
    - base == 'debian9':
        configure-commands:
          (<):
            - cp /usr/share/doc/*/libstdc++/user/libstdc++.tag doctags/
