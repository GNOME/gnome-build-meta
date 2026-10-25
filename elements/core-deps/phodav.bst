kind: meson

sources:
- kind: git_repo
  url: gnome:phodav.git
  track: master
  ref: v3.0-208-g964639c15f0c47e1ddbbd2d2256ce6cab2705f00

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/avahi-gobject.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dlitmus=disabled
