kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-tour.git
  track: master
- kind: cargo
build-depends:
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
