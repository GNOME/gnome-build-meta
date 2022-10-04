kind: meson
sources:
- kind: git_tag
  url: gnome:phodav.git
  track: master
  ref: v3.0-7-gde7dd2afbab8ac1f35b90e7dfd763c78959ca5de
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/avahi-gobject.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
