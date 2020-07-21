kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/tracker.git
  track: tracker-2.3
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/dconf.bst
- core-deps/upower.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=false
    -Dunicode_support=icu
    -Dfunctional_tests=false
    -Dstemmer=disabled
    -Dbash_completion=%{datadir}/bash-completion/completions
