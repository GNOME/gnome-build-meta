kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-menus/3.35/gnome-menus-3.35.3.tar.xz
  ref: b678237d92b01eeee46fbf416c59f8e9f8f653ac73e5c7bd03972acb8625ac0a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
