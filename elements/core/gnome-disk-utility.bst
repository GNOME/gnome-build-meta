kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-disk-utility/3.28/gnome-disk-utility-3.28.2.tar.xz
  ref: a68ebbf5c1cd3d1f467dbe52a13db6a5b7f09cd46c676dfcefd1ae7cc32274c8
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/meson.bst
- core/adwaita-icon-theme.bst
- core/gnome-settings-daemon.bst
- base.bst
