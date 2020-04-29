kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-screenshot.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
