kind: meson

sources:
- kind: tar
  url: github_files:flatpak/xdg-desktop-portal-gtk/releases/download/1.15.2/xdg-desktop-portal-gtk-1.15.2.tar.xz
  ref: 0295af247fc0d8c94e722731c29a2db7a045d38b132325b22e508709a235300b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst

variables:
  meson-local: >-
    -Dappchooser=disabled
    -Dlockdown=disabled
    -Dsettings=disabled
    -Dwallpaper=disabled
