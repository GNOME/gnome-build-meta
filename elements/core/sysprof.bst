kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.40/sysprof-3.40.1.tar.xz
  ref: c25000d6a20e8c4d314f5c861a1f70d7c3e2027117437fd9198fa811b9fc7437
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libdazzle.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
