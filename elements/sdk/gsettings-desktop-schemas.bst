kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/49/gsettings-desktop-schemas-49.beta.tar.xz
  ref: f310a0543b4b428b79adab587adceb3c6509482dc2a210948fac30aa79b29226
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
