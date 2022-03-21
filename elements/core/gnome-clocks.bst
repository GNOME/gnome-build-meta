kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/42/gnome-clocks-42.0.tar.xz
  ref: 0e7118db4a032e3cea3212d98cbb828d6b7cf22fe05e0c5fc8b391c6a3dd6fe0

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
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
