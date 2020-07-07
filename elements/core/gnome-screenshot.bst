kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/3.37/gnome-screenshot-3.37.1.tar.xz
  ref: a42d4065ead49e4b3dafae963e581b5bc0da515c253434ba49cab6421e911bbb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
