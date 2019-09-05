kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/PackageKit/releases/PackageKit-1.1.12.tar.xz
depends:
- core-deps/NetworkManager.bst
- filename: core-deps/intltool.bst
  type: build
- core-deps/libgudev.bst
- core-deps/polkit.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-vala --disable-tests --disable-qt --disable-browser-plugin
    --disable-bash-completion --disable-gtk-module --enable-python3
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
