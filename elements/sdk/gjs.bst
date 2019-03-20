kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gjs.git
  track: master
depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs60.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests
