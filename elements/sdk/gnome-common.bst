kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-common/3.18/gnome-common-3.18.0.tar.xz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
