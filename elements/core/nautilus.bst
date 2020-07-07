kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.37/nautilus-3.37.3.tar.xz
  ref: acf55a598b79df5d06328e3d34a985b936926edd41ffb9ba03add6d715dfba98
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gexiv2.bst
- core-deps/gnome-autoar.bst
- core-deps/tracker-miners-2.bst
- core-deps/tracker-2.bst
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
