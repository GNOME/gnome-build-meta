kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libsigc++/3.0/libsigc++-3.0.4.tar.xz
  ref: a3a37410186379df1908957e7aba7519bdcf5bcc8ed70ee8dfea9362c393d545
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-documentation
