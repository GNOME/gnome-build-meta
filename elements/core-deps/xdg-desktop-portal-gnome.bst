kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/44/xdg-desktop-portal-gnome-44.beta.tar.xz
  ref: 83a1909f03ce1e6fab072bf7f136a14159b149c7399b091f901f0d0f467855e2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
