kind: meson

sources:
- kind: git_repo
  url: gnome:adwaita-fonts.git
  track: main
  ref: 8418084ae3825993f1ac0a60a9d478a2cc551393
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

