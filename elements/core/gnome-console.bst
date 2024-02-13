kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/45/gnome-console-45.0.tar.xz
  ref: e7462128d2df2324a1d748062c40429cd0504af09e407067b33f3a9d0c59c8e1
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
