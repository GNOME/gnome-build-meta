kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/cantarell-fonts/0.111/cantarell-fonts-0.111.tar.xz
  ref: 858b2bc196ee851c8e5a76376097bc75f23bc01b29591c30ed3a550e23b41716
depends:
- sdk/appstream-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
