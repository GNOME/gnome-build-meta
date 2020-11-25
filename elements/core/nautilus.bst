kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.38/nautilus-3.38.2.tar.xz
  ref: d09ceb54c274e50084c8757a73cd247fee5bde02a0b0d13733b0006d1a4196a6
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
- sdk/pango.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dselinux=false
