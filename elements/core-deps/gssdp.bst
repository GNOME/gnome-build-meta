kind: autotools
sources:
- kind: git
  url: git_gnome_org:gssdp
  track: gssdp_1.0
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
