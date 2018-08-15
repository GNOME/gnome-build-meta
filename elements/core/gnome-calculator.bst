depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core-deps/libsoup.bst
- core-deps/mpc.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: e7b0dae79386b7a7652268eec555c53be4d11000815388c75e3a93dd6c0188dc
  url: https://download.gnome.org/sources/gnome-calculator/3.29/gnome-calculator-3.29.91.tar.xz
