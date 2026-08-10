kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/51/gsettings-desktop-schemas-51.beta.tar.xz
  ref: 4b8d487c312ed345543778a92d974afcfce8b7cc2c908808f25b725b91528914
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
