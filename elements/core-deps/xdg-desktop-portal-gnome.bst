kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/48/xdg-desktop-portal-gnome-48.0.tar.xz
  ref: cd15aca2e1364da308eb3796bb8ae4a577e60ca4fe12006b315232cfd19c8861

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

variables:
  # libgxdp tests depend on mutter
  meson-local: >-
    -Dlibgxdp:tests=false
