kind: meson
sources:
- kind: git_repo
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.16-15-gf2a51fa64f2bfdaeccbf5bd71fb6c6a863651967
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
