kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/43/gnome-console-43.beta.tar.xz
  ref: b784dc48155ef3a024cd88a3f7feb9d093bd99c65f2a9715a37f9fbbb5aaf156
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
