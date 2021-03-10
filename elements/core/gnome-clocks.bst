kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-clocks.git
  track: master
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
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
