kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/50/gnome-calendar-50.beta.tar.xz
  ref: fec698f929f8a489c467aba48e84c8276a625ed04735aad2eff359b3a5fb6f3d
build-depends:
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
