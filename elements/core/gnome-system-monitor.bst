kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-system-monitor/3.30/gnome-system-monitor-3.30.0.tar.xz
  ref: 08a17fe1f8f6c01cb5a777bb3a622a3d54068f0b5f779bbf6ecb68b98a291e3c
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/polkit.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: sdk/yelp-tools.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
