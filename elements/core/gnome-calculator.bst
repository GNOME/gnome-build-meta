kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.38/gnome-calculator-3.38.0.tar.xz
  ref: 902e23ff550692b02459e14d6ebba8b670663a9f4af0d98ee52fadea895b57fe
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
