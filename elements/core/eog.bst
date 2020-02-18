kind: meson
sources:
- kind: tar
  url: gnome_downloads:eog/3.35/eog-3.35.91.tar.xz
  ref: 2599eb6fdef27b0bfaf75fdfb40b5a38290b0863ee50634ec6fa6a35f2d9744d
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
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst
