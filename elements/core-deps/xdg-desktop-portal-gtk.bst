kind: meson

sources:
- kind: tar
  url: 
    github_files:flatpak/xdg-desktop-portal-gtk/releases/download/1.15.3/xdg-desktop-portal-gtk-1.15.3.tar.xz
  ref: 47a3743d2419a8601e691db37e85bb5fac5ae4b26842177065cd5f22ada23b37

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
