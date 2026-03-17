kind: meson

sources:
- kind: git_repo
  url: gnome:phodav.git
  track: master
  ref: v3.0-27-ge146b12bae68fcc554e77b81cea0acd464b1226b

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/avahi-gobject.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
