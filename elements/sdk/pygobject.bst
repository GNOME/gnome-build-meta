kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.50/pygobject-3.50.0.tar.xz
  ref: 8d836e75b5a881d457ee1622cae4a32bcdba28a0ba562193adb3bbb472472212
- kind: git_repo
  url: gnome:gobject-introspection-tests.git
  directory: subprojects/gobject-introspection-tests
  ref: ca387326e2161b4608190417c26e45931e00b265

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
