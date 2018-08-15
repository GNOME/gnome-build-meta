depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libcanberra.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 1bbc11595d3822f4b92319cdf9ba49dd00f5471b6046c590847dc424a874c8bb
  url: https://download.gnome.org/sources/gnome-screenshot/3.26/gnome-screenshot-3.26.0.tar.xz
