kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/40/gnome-font-viewer-40.0.tar.xz
  ref: d2cc7686946690dc274a5d0c72841d358d0ccd42d3f34993c698bdf13588fe42
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
