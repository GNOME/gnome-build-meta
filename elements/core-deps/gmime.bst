kind: autotools
sources:
- kind: git_tag
  url: gnome:gmime.git
  track: master
  ref: 3.2.3-51-g6bff5288f9c108160dd56dd20a9c6608aa55f791
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
