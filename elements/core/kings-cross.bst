kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:ZanderBrown/kgx.git
  track: master
build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/dconf.bst
- core-deps/libhandy.bst
- core-deps/libgtop.bst
- core-deps/vte.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgeneric=true
