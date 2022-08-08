kind: meson

sources:
- kind: tar
  url: gnome_downloads:eog/42/eog-42.3.tar.xz
  ref: 30c1b3c28bc6dc2854d878ebd31a22eaa15bf959c134206a2a1904193e47f43a
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exempi.bst
- core-deps/libpeas.bst
- core-deps/libportal.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst
