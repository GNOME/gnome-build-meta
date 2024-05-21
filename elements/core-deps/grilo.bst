kind: meson
sources:
- kind: git_repo
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.16-11-gb67af974b00e722de60a41b5305ee561157c88da
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
