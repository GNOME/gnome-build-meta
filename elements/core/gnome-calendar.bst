kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/48/gnome-calendar-48.alpha2.tar.xz
  ref: 95ca26ec2280e47a2a4664ecd78c883d11e6df382b35e228d87d4df69d7963f9
build-depends:
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
- freedesktop-sdk.bst:bootstrap-import.bst
