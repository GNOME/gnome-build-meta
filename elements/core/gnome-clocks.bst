kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/46/gnome-clocks-46.rc.tar.xz
  ref: 8322439c7d8e3dc22049d3d6e3801a8e2b8a04ec8ec88fd2545d0d10f050c28a
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
