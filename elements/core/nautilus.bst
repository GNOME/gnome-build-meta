kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.35/nautilus-3.35.91.1.tar.xz
  ref: 146273f1c05a63289b2cd6063390bcbcfef1db401e7d68a1faf110b38a1ded0d
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
