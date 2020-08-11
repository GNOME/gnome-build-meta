kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.37/nautilus-3.37.90.tar.xz
  ref: 6f70153056daceaf94d5cc9c60a8aa982dd6193b14a90560ffa740c668615525
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
