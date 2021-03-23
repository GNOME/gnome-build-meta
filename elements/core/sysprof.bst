kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.40/sysprof-3.40.0.tar.xz
  ref: 96ac03398d4b2871b235c20b09457f9be5b853cb841c31cdefdae06df3e4f6e8

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
