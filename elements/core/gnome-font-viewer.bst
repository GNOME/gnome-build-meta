kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/3.34/gnome-font-viewer-3.34.0.tar.xz
  ref: aa6f0583e5f93aec095e537f0638b29de3d02491f0131ef584a7c55d39d6b98b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
