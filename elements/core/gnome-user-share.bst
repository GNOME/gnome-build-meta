kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-user-share.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:bootstrap-import.bst
