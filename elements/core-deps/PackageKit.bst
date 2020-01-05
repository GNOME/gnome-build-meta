kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/PackageKit/releases/PackageKit-1.1.12.tar.xz
build-depends:
- core-deps/intltool.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-vala
    --disable-tests
    --disable-qt
    --disable-browser-plugin
    --disable-bash-completion
    --disable-gtk-module
    --enable-python3
config:
  build-commands:
  - '%{make} CFLAGS=-Wno-error'
