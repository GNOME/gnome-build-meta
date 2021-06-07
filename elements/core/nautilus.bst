kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/40/nautilus-40.2.tar.xz
  ref: b71ef2fe07e5eea89a2bb1e5bd30947bd18873bfb30f79cbf17edfbd4d20f60d
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
