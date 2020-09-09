kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.37/sysprof-3.37.92.tar.xz
  ref: 425c5f543aded5292ecaab491a617650d86eecdf851e3b5148c02c5d8f744880
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
