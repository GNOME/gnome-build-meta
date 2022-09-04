kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/43/gnome-console-43.rc.tar.xz
  ref: 0c22c5aa83bedeac58c581820414ab04fbb378e5262b30ca4f4f90aa0e122e2c
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adobe-source-code-pro-fonts.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
