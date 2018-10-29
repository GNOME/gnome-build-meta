kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gmime/3.2/gmime-3.2.1.tar.xz
  ref: 56fe6f4f10dc7ee31cc026fd433a06972301cc4ef2d2f6ce78d2dfdfa9b2c560
depends:
- sdk/glib.bst
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
