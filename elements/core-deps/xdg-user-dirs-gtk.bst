kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-user-dirs-gtk/0.14/xdg-user-dirs-gtk-0.14.tar.xz
  ref: 537fbe142b24736ed7894e4a01f69fd758cb6c7a677a382879529d217f4a2873
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
