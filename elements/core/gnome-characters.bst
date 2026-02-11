kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-characters.git
  track: main
  ref: 50.alpha-17-g919acb39bcb257c93a086bbfadab97a6da09807b

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
