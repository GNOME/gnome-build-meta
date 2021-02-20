kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/40/gnome-font-viewer-40.beta.tar.xz
  ref: 18367b1c297ded34384037fead56011fd46c12a31e736911ff27822562985ac9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
