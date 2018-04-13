kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-disk-utility/3.28/gnome-disk-utility-3.28.1.tar.xz
  kind: tar
  ref: a6394ba55b153c8a43734638603357489ff2545264c932cd763122ad9c9db525
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
