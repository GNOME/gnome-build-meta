kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.36/sysprof-3.36.0.tar.xz
- kind: patch
  path: files/sysprof/32-bit-fix.patch

build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/polkit.bst
- core-deps/libdazzle.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
