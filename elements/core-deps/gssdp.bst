kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gssdp
  track: gssdp_1.0
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
