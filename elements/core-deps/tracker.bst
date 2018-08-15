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
kind: autotools
sources:
- kind: tar
  ref: fa3d503a1eeaef221df7ba81074a56a8d8bbedafda17c872db4ab3b9ba771325
  url: https://download.gnome.org/sources/tracker/2.1/tracker-2.1.1.tar.xz
variables:
  conf-local: --with-unicode-support=libicu --with-bash-completion-dir=/usr/share/bash-completion/completions
