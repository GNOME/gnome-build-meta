kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/43/gnome-font-viewer-43.alpha.tar.xz
  ref: 4a92ed0f744485959e0962330561289f1bb171ae3d413eaa8d1f71184f112b25
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
