kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/51/xdg-desktop-portal-gnome-51.0.tar.xz
  ref: ec228b305091b649c16c690e102aa1d66fc10e9834888d51e411913c82c1430d
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  ref: df896e3412b749947bc6f62a91a1aac8e6b6d19b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  # libgxdp tests depend on mutter
  meson-local: >-
    -Dlibgxdp:tests=false
