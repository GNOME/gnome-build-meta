kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/47/xdg-desktop-portal-gnome-47.1.tar.xz
  ref: d420ff72173b04dc9491d3d7dd8cc96204f7f3f27c4cbea6024361ea9839f769
build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
