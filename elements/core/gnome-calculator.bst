kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/47/gnome-calculator-47.0.tar.xz
  ref: decdb23283b5dbeef40951b69eaf7d4b80c0c3880ddb01863f9f0f1554f8998b
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- sdk/libgee.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
