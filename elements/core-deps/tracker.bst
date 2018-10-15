kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/tracker
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst

variables:
  meson-local: |
    -Ddocs=false \
    -Dunicode_support=icu \
    -Dbash_completion=${prefix}/share/bash-completion/completions
