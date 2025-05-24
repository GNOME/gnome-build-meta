kind: meson

sources:
- kind: git_repo
  # FIXME:
  # url: gnome:Incubator/manuals.git
  url: https://gitlab.gnome.org/chergert/manuals.git
  track: main
  ref: 48.0-38-g495a7106f30dbeaa5cef5387aadaffc2c343c076

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/foundry.bst
- core-deps/gom.bst
- sdk-deps/libpanel.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:bootstrap-import.bst
