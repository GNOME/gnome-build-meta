kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.39/sysprof-3.39.94.tar.xz
  ref: d0b9e31216f811c32446ac386b6da1bc058a2402d154350bc47d8e9ae9aa89ea

build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libdazzle.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
