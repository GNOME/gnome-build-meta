kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gjs
  track: master
depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs60.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --enable-installed-tests
