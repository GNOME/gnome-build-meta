kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/40/adwaita-icon-theme-40.0.tar.xz
  ref: 1f2bca34f60357ab91b7db91c5e919ad36775e094138dffc870bb5f97b0dbbb2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
