kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.38/gnome-calculator-3.38.2.tar.xz
  ref: 8c83cc6433e015d15aa2a0cf3d0b187f7adb92830d39dd2e66076c73192a316b
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
