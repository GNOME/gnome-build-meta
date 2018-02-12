kind: autotools
sources:
- kind: git
  url: git_gnome_org:tracker
  track: master
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
