kind: autotools
sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/libgrss.git
  track: master
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
