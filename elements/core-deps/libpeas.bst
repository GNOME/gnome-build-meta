kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/1.25/libpeas-1.25.3.tar.xz
  ref: 1c9bbb29740c29cd6e1dd0c9964722ff08cd5e6f68f1b5c135bc391a6ce97639
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pygobject.bst
- filename: sdk/vala.bst
  type: build
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: -Dpython3=true -Dintrospection=true -Dvapi=true -Dwidgetry=true -Dgtk_doc=true
