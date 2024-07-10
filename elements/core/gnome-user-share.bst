kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-share.git
  track: master
  ref: 47.alpha-0-g344756d24797b485e29de71afb21ac6dfa7f0474

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
