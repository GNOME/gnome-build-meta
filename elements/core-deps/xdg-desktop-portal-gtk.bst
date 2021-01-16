kind: autotools

sources:
- kind: tar
  url: github_com:flatpak/xdg-desktop-portal-gtk/releases/download/1.8.0/xdg-desktop-portal-gtk-1.8.0.tar.xz

  ref: a52529ed321e044ca9adca5e9718d9ba57c414a2634dd4109df344c5b9eed77f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gtk+-3.bst
- core/gnome-desktop.bst
- core-deps/xdg-desktop-portal.bst
