kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/49/gsettings-desktop-schemas-49.rc.tar.xz
  ref: 6136c15bf36d6d6fba0ddefc5b1dc6d0794444a3e1f45134cef967560c6622ad
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
