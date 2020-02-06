kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.35/gnome-calculator-3.35.90.tar.xz
  ref: 31d1b3b46525fc24dd180c15292a60bb34b88a0b5ab0912d8574cfe1a89d4670
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
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
