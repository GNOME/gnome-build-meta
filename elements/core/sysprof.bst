kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.38/sysprof-3.38.0.tar.xz
  ref: 8bcd728dc2f74e6f589410370dfb1b8801468bb3cc1803aa240735a7cff241ce
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
