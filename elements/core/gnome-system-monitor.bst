kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-system-monitor.git
  track: master
  ref: 46.alpha-33-g2427fa18d30bf25c0f6871c20a20124aa1e7226e

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
