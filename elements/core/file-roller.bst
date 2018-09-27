kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/file-roller/3.30/file-roller-3.30.1.tar.xz
  ref: 41de44cb85607511cc7bbc9496ba241e714b180e671d724ae8be478ff553394e
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
