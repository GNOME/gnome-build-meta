kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.35/gnome-system-monitor-3.35.90.tar.xz
  ref: 61ee0ed6763829824f8acc66898c330793eaf7cdac30833bbae0be0b31934ffc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/polkit.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
