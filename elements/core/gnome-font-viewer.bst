kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/47/gnome-font-viewer-47.alpha.tar.xz
  ref: 5305c5ef54d742a3d641443ab5513e2c98f915e2fb0afc7c5f326d200a461f2f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
