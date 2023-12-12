kind: autotools

sources:
- kind: git_repo
  url: gnome:libzapojit.git
  track: master

build-depends:
- core-deps/intltool.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- world/librest-0.7.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/gnome-online-accounts.bst
- sdk/glib.bst
- sdk/json-glib.bst
- world/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
