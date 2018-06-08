kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.100/cantarell-fonts-0.100.tar.xz
depends:
- sdk/appstream-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
