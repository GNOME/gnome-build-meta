kind: meson

sources:
- kind: git_repo
  url: github:flatpak/xdg-desktop-portal-gtk
  track: '*.*.*'
  ref: 1.15.3-0-g337202d4e7179857bc37b03c1a6d8c9d92e47c44

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
