kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/49/gnome-font-viewer-49.rc.tar.xz
  ref: 1b951a8ca38c5d7e141dbe642f63518a499a2609a810872ae105759bd45409d0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
