kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/43/gnome-font-viewer-43.beta.tar.xz
  ref: 613de44d975c27bcab79c64430cbc106e987321774dd9699a699651857248dc9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
