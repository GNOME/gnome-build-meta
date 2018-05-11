kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker/2.0/tracker-2.0.3.tar.xz
  ref: 5a2fb274c128ec67a920944937b5147ceaf5db16fef6691ea22c4cb841e20580
depends:
- core-deps/NetworkManager.bst
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- core-deps/upower.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --with-unicode-support=libicu --with-bash-completion-dir=/usr/share/bash-completion/completions
