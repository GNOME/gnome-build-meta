kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calculator/3.29/gnome-calculator-3.29.91.tar.xz
  ref: e7b0dae79386b7a7652268eec555c53be4d11000815388c75e3a93dd6c0188dc
depends:
- core-deps/gtksourceview-3.bst
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
