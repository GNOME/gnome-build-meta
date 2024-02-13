kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/46/xdg-desktop-portal-gnome-46.beta.tar.xz
  ref: 60c1254acd4098ffee40e1a7881aa907ecd7650e95477195c9df394697f64407
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
