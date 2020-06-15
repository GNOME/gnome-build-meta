kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.36/nautilus-3.36.3.tar.xz
  ref: b6cafc7ab1e70a64383de391b6097fcccbf36b208f8502d8c46423224fd30ef8
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
  meson-local: >-
    -Dselinux=false
