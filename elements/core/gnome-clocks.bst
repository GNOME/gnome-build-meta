kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-clocks.git
  track: master
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libhandy.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
