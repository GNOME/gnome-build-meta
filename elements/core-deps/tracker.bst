kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/tracker.git
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
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: |
    -Ddocs=false \
    -Dunicode_support=icu \
    -Dfunctional_tests=false \
    -Dstemmer=disabled \
    -Dbash_completion=${prefix}/share/bash-completion/completions
