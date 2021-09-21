kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/41/gnome-font-viewer-41.0.tar.xz
  ref: 5dd410331be070e4e034397f2754980e073851d50a2119f2fbf96adc6fe2e876
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
