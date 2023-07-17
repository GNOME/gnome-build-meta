kind: meson
sources:
- kind: git_tag
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.16-3-g0107c64718b17541c9867ece704517f24a9bd762
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
