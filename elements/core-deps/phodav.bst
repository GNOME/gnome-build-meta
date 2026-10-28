kind: meson

sources:
- kind: git_repo
  url: gnome:phodav.git
  track: master
  ref: v3.2-2-g822b1945fcdb98654c7e91e1c4437aaf3524ef4c

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
