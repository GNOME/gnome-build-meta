kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.48/pangomm-2.48.0.tar.xz
  ref: 9e0ed474c33f8c2002ca9e2b61ca0d1f3d8e409e09e99f4d8c19eeafccf55b78
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- sdk/atk.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
