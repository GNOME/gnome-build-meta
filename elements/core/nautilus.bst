kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.37/nautilus-3.37.92.tar.xz
  ref: d0403e6c3c517d8e36f04165ee38e3d4b32d9cdbd1d08f2cac9428337ab88275
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
