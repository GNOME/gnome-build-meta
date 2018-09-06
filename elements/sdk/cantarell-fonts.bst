kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.101/cantarell-fonts-0.101.tar.xz
  ref: 9b9e6e824fee7a809129f2238710f09d4ef4c6fe8fd7db1969bb5e228c3f7ee5
depends:
- sdk/appstream-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
