kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/41/devhelp-41.1.tar.xz
  ref: 46ea4f8752c22442e0f14be10387a4e8a3872680c3f04882aabeac7daea22e4b
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
