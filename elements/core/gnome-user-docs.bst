kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-user-docs/3.28/gnome-user-docs-3.28.2.tar.xz
  ref: 8d6919447f54266049d39808a03d11a56ab4a5fb0a537e79936fd112decbe13d
depends:
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
