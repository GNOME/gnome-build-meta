kind: meson
sources:
- kind: tar
  url: gnome_downloads:eog/3.38/eog-3.38.2.tar.xz
  ref: 8a54fdf93e306a0f64853a18831ac8c0483820477106aae0bdc00aac37386f0e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/exempi.bst
- core-deps/libpeas.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:components/libportal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
