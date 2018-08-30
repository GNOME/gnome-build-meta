kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/tracker
  track: master
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
  meson-local: |
    -Dunicode_support=icu \
    -Dbash_completion=${prefix}/share/bash-completion/completions
