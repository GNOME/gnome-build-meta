kind: meson
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.42/pangomm-2.42.2.tar.xz
  ref: 1b24c92624ae1275ccb57758175d35f7c39ad3342d8c0b4ba60f0d9849d2d08a
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
