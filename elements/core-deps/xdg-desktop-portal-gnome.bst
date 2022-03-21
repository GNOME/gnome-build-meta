kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/42/xdg-desktop-portal-gnome-42.0.1.tar.xz
  ref: dfe8b52450f32838f9f9e898e95aa8dfa2705ce12d438305557c128b9ce0e2e6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
