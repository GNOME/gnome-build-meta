kind: meson

sources:
- kind: git
  url: gitlab_gnome_org:GNOME/xdg-desktop-portal-gnome.git
  track: main

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/gsettings-desktop-schemas.bst
- core-deps/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
