kind: autotools
sources:
- kind: git
  url: git_gnome_org:tracker
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-unicode-support=libicu --with-bash-completion-dir=/usr/share/bash-completion/completions
