depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 0af25d5fbf5583f7b593419a3a1909baafd6b7027579fb0c33875d90b6cbfe4a
  url: https://download.gnome.org/sources/file-roller/3.29/file-roller-3.29.90.tar.xz
