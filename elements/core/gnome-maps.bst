kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-maps.git
  track: main
  ref: 49.alpha-14-g605e1e0bb50afbe5ef6270cfbf40afeee19d7798

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib-networking.bst
- sdk/librsvg.bst

depends:
- core-deps/libgweather.bst
- core-deps/libportal.bst
- core-deps/librest.bst
- core-deps/libshumate.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
