kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-characters/3.28/gnome-characters-3.28.2.tar.xz
  ref: 8016f974f4fcdd207f1a3784b2e82c66ebe62451ced0d03fd3bc181e87b0d512
depends:
- core-deps/appstream-glib.bst
- core-deps/gjs.bst
- core-deps/gtk+-3.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
