kind: autotools
sources:
- kind: git
  url: git_gnome_org:gssdp
  track: gssdp_1.0
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- base.bst
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
