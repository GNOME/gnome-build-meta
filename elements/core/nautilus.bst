kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/40/nautilus-40.0.tar.xz
  ref: 7d5002617895ad372e52f7a8e302a32343326739f088fa8df6104af709cc4d40
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
