kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/43/baobab-43.rc.tar.xz
  ref: 7820d9ea532610a67211b09a122adfe07532004cd0d836eb4ad31a09d1fe8656
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
