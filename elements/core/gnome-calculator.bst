kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.35/gnome-calculator-3.35.92.tar.xz
  ref: 4fb36d721d112a73c5a36ef3a45a21c84b9fbc828ac4b22b117176559c5d7aa1
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
