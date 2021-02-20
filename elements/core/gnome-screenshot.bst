kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/40/gnome-screenshot-40.beta.tar.xz
  ref: ba6865a84365dd7f570c8734f10a052c4162905a15c71653f27787a8c9e88b14
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
