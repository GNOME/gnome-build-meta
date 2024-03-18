kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 46.rc-7-gcc259515471bb36a1d8b8e1055c281c81465d6e6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
