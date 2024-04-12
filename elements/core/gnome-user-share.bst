kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-share.git
  track: master
  ref: 43.0-16-g312a05ba57a51710ad9c690d92228df9680532cf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
