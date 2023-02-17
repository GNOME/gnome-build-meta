kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.43/pygobject-3.43.1.tar.xz
  ref: e792267a790c0b990992bbbc414988cb96a95c0a2d4814365e7f56cdfa8df613
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
