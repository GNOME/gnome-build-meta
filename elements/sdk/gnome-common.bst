kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-common/3.18/gnome-common-3.18.0.tar.xz
  ref: 22569e370ae755e04527b76328befc4c73b62bfd4a572499fde116b8318af8cf
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
