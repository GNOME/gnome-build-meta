kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/41/devhelp-41.beta.tar.xz
  ref: a618c304ad626c4154b54638f847a7afa92d5a0fa7d7c0a882e64c52f6d2b71a
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
