kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/51/gsettings-desktop-schemas-51.rc.tar.xz
  ref: 4eb16e9315cf1182fa50a4bd49ee98bec253d78db0113cd41644cc0c9a25ae2e
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
