kind: meson

sources:
- kind: git_repo
  url: gnome:adwaita-fonts.git
  track: main
  ref: 48.2-4-gc54fa35dfdefa16bf277c24c3130825d9acad16c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

