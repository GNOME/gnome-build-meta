kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-disk-utility/3.27/gnome-disk-utility-3.27.90.tar.xz
  kind: tar
  ref: 3a17f2818196cbf094d4aefd7bf4a63b434b2cd985c88e85c91f0fcd2d7fb3e1
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/meson.bst
- core/gnome-settings-daemon.bst
- base.bst
