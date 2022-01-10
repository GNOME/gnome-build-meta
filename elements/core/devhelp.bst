kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/41/devhelp-41.2.tar.xz
  ref: ecaa90b0f4daa8fb2030f6dc690bf533ff99a773437fe0e18acfe82d997f60d2
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:bootstrap-import.bst
