kind: meson

sources:
- kind: tar
  url: gnome_downloads:nautilus/42/nautilus-42.alpha.tar.xz
  ref: 649dcf5a21efd8aed59dcd4f59441beb5cc5107d518f5c0ecefb394685274d7d
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/tracker-miners.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/gexiv2.bst
- core-deps/gnome-autoar.bst
- core-deps/libportal.bst
- core/gnome-desktop.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/pango.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dselinux=false
