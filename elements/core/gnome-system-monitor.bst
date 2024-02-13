kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/46/gnome-system-monitor-46.beta.tar.xz
  ref: 18ec52709ee08cfbcf09727db05b7d2b951a99342a212f891db27ecbdf2debb3
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/glibmm.bst
- core-deps/gtkmm.bst
- core-deps/libgtop.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
