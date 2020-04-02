kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gjs/1.58/gjs-1.58.6.tar.xz
  ref: 1864bf22f4f5e4107832b4c54127cce8509d37ccc14abd25a6878c7ffed96640
depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs60.bst
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests
