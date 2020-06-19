kind: autotools

sources:
- kind: tar
  url: github_com:flatpak/xdg-desktop-portal-gtk/releases/download/1.6.0/xdg-desktop-portal-gtk-1.6.0.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gtk+-3.bst
- core/gnome-desktop.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
