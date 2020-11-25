kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.38/sysprof-3.38.1.tar.xz
  ref: 404e1a96cc075b3da25461c73ee43d17a85491e707c0434d215d0a77504851fc
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
