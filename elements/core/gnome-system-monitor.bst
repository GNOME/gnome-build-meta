kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-system-monitor.git
  track: master
  ref: 45.0.1-3-g362b4398a3ea4ac4af42b6d197b515561bea07bd
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
