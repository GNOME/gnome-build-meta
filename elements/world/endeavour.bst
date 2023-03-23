kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:World/Endeavour.git
  track: main

build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libpeas-1.bst
- core-deps/libportal.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
