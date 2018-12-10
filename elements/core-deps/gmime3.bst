kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gmime/3.2/gmime-3.2.3.tar.xz
  ref: 6a0875eeb552ab447dd54853a68ced62217d863631048737dd97eaa2713e7311
depends:
- sdk/glib.bst
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
