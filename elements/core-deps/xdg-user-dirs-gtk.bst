kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-user-dirs-gtk/0.16/xdg-user-dirs-gtk-0.16.tar.xz
  ref: be825de7f89175db5ead0cd3744d2761109c70943251a87092259163025520a9
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
