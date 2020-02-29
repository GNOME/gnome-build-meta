kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.35/adwaita-icon-theme-3.35.92.tar.xz
  ref: 1d7f8eb3689d793fe95114db935a9ef31885f2c002e5acd3b677e96d9236d667
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
