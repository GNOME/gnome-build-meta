kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.50/pygobject-3.50.0.tar.xz
  ref: 8d836e75b5a881d457ee1622cae4a32bcdba28a0ba562193adb3bbb472472212
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
