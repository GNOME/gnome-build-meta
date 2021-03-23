kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/40/gnome-calendar-40.0.tar.xz
  ref: 6838c3c2c0c729ab3869aa8619ee9afc896923cbae13f9246bbc36999e85e434

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
