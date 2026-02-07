kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/50/xdg-desktop-portal-gnome-50.beta.tar.xz
  ref: 04e936eda5bd33e08a81dc133d415d9f462f0d77848ba23ef736830075150c79
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  track: main
  ref: d5eca997aa2fea5af54fdd286d5c1e1aa7c76389

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
