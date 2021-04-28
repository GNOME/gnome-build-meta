kind: meson
sources:
- kind: tar
  url: gnome_downloads:eog/40/eog-40.0.tar.xz
  ref: 3017c984f115977c22bc4f9d27d09f80ec96adf6901b4ec0f4f542ef023de5f9
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
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
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:components/libportal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
