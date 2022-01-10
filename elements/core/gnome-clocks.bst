kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/42/gnome-clocks-42.alpha.tar.xz
  ref: fb51a7ecaf919750b090ba39211b95899c4f20fae08eb2e006801aa7d902c951
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
