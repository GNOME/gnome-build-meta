kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker/2.0/tracker-2.0.4.tar.xz
  ref: ce2f0db52666592d313a04ce14663110eafa8ab08dc213b53e790281362dccd5
depends:
- core-deps/NetworkManager.bst
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- core-deps/upower.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-unicode-support=libicu --with-bash-completion-dir=/usr/share/bash-completion/completions
