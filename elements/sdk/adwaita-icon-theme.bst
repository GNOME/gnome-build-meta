kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.37/adwaita-icon-theme-3.37.92.tar.xz
  ref: f0c644fa1173369a8b9c6527bdd1b0c8e23423e158c77335768c48114146596f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
