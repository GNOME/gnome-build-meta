kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/file-roller/3.30/file-roller-3.30.0.tar.xz
  ref: 190b20fc624f682ebb798db6c382e466c1820f9e027d56010760d71dba614ff5
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
