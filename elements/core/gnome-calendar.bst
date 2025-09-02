kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/49/gnome-calendar-49.rc.tar.xz
  ref: 80e2cda5acee0f2b5c7e2166634fb59efe734ed983dfbe5c53f01b1088801f32
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
