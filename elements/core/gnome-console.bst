kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/48/gnome-console-48.1.tar.xz
  ref: 70d10999fe5f5b1bf4b5583efc4828d8361c7c87e8fbae49d4a4ff9726276bcf
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
