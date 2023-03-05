kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/44/gnome-font-viewer-44.rc.tar.xz
  ref: f6894326fa0bf3f85cfd2780ee142fd15f54741a3d3d0ea9218dfda383b5c8ec
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
