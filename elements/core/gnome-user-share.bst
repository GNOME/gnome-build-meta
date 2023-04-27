kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-user-share.git
  track: master
  ref: 43.0-9-gab7aacf34be5c90f57906173b029fdff69841261

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
