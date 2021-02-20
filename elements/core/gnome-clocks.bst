kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/40/gnome-clocks-40.beta.tar.xz
  ref: a3c98c04e4f6a3830203902a667e3a1c880496ee8708c9a2e586eaa943f292d6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
