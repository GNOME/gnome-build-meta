kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-tweaks.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core/gnome-shell.bst
- core/nautilus.bst
- sdk/librsvg.bst
- sdk/pygobject.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
