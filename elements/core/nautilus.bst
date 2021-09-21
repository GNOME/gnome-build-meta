kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/41/nautilus-41.0.tar.xz
  ref: f9b941adc104700c67ea4076622315f1f6b77dcec154c37f3d4c0b283950a1e5
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
