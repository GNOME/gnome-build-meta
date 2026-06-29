kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/51/gnome-calendar-51.alpha.tar.xz
  ref: 05c1a9fe9fa5de27ae12d7586d4abb04ff520c4623bac7bffd4c15e6d485f8a7
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
