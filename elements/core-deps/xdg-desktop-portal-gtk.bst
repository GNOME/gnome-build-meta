kind: meson

sources:
- kind: tar
  url: github_files:flatpak/xdg-desktop-portal-gtk/releases/download/1.15.1/xdg-desktop-portal-gtk-1.15.1.tar.xz
  ref: 425551ca5f36451d386d53599d95a3a05b94020f1a4927c5111a2c3ba3a0fe4c

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
