kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/44/gnome-clocks-44.rc.tar.xz
  ref: 151ec4f4acaacaf7578f451da97e2c44803bf6ab98eeb7c637048a912f5c7010
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
