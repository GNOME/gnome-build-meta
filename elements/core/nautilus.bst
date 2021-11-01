kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/41/nautilus-41.1.tar.xz
  ref: 3e633098853711a3e96b12fe9228b3201816e554b2823f161e7d901a8880582f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gexiv2.bst
- core-deps/gnome-autoar.bst
- core-deps/tracker-miners.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/pango.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libportal.bst
variables:
  meson-local: >-
    -Dselinux=false
