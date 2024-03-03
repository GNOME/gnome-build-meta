kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/46/gnome-console-46.rc.tar.xz
  ref: d7830bbfe46b60a7d5906b00bc5a9677d7b17cb51cce72025ffb01dd4c630e09
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
