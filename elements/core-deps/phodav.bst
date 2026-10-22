kind: meson

sources:
- kind: git_repo
  url: gnome:phodav.git
  track: master
  ref: v3.0-32-gfb12c81bdfe91a47a42aa687941c27c7536038d7

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/avahi-gobject.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
