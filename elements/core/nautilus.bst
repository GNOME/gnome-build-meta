kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/41/nautilus-41.5.tar.xz
  ref: b8873a137bd41f3209cd861c312f790a9932c8c464e5c36faa19f145dd4fd63f
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
