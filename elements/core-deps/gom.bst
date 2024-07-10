kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.5.2-2-gec9a5388091f8d4d5726bd39e994b2936881c981
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
