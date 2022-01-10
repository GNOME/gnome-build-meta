kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/42/gnome-font-viewer-42.alpha.tar.xz
  ref: 53ac073a162c450117b6d2fb5ad6555fd7b7fd1d66c5de5f4ad5bfef6a2fbba4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
