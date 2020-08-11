kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.37/sysprof-3.37.90.tar.xz
  ref: 61810c36bc0bfb5ce8808e6b2fbefc3ce0c510c57b1d26bba66cc636f75b8041
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
