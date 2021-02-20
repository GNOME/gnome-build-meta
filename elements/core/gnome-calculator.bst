kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/40/gnome-calculator-40.beta.tar.xz
  ref: 6edb4331c4192dadbd41cbc8a8e71d6e4c7032bdfad4c80628928ee54f1920d2
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
- sdk/libhandy.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
