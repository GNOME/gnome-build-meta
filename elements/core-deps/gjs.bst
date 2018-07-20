kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gjs/1.53/gjs-1.53.4.tar.xz
  ref: c1762329eea3632c74653c49e6c7057079b618d4a3e82803d5a9b2bad70a3a57
depends:
- core-deps/gobject-introspection.bst
- core-deps/mozjs52.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests
