kind: meson
sources:
- kind: git
  url: https://gitlab.gnome.org/GNOME/tracker.git
  track: 2.1.5
  ref: ccf6034b223b1e5a57bd5791006e08d107b02dc2
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
  meson-local: |
    -Dunicode_support=icu \
    -Dbash_completion=${prefix}/share/bash-completion/completions
