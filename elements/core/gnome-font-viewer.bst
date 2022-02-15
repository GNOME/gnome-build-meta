kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/42/gnome-font-viewer-42.beta.tar.xz
  ref: 68d501149eb793e4fc6bb96a9d86597636bdf10e9e28203e2e64f64143cd4a69
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
