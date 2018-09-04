kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gcr/3.28/gcr-3.28.0.tar.xz
  ref: 15e175d1da7ec486d59749ba34906241c442898118ce224a7b70bf2e849faf0b
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
