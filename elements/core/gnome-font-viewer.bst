kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/45/gnome-font-viewer-45.alpha.tar.xz
  ref: 0fe93cd5917be8262e8841611e1bcf92c436db4c37185fa66b05af9339023c79
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
