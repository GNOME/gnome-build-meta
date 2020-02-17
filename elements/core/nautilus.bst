kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.35/nautilus-3.35.91.1.tar.xz
  ref: abd215fc12754fb72e7b3a5fad2633aec174c03ead13c0173170958aa2aa1caa
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gexiv2.bst
- core-deps/gnome-autoar.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: -Dselinux=false
