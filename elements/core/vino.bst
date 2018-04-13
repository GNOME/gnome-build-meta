kind: autotools
sources:
- url: https://download.gnome.org/sources/vino/3.22/vino-3.22.0.tar.xz
  kind: tar
  ref: 2911c779b6a2c46e5bc8e5a0c94c2a4d5bd4a1ee7e35f2818702cb13d9d23bab
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/telepathy-glib.bst
- base.bst
