kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/43/devhelp-43.alpha.tar.xz
  ref: f074316e8e75bcd8ce5b1fa2d6b9f418aad34e6b70b7ebb8259905e5e5508f02
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
