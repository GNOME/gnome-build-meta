kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.5/gom-0.5.3.tar.xz
  ref: 069d0909fbdc6b4d27edf7a879366194e3ab508b03548bf5b89ff63546d20177
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
