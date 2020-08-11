kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.37/gnome-calculator-3.37.90.tar.xz
  ref: b895b5ec62b9495810b0a6cb90158e6d1607096d150b4ac5cdcf8aefceded4c1
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/libgee.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
