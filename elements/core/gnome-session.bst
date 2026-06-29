kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-session/51/gnome-session-51.alpha.tar.xz
  ref: fde1eef6c35c2b31bc2a341408a517f7fedde9d34b2d5018d32f77ebfabe3bf2
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/xmlto.bst

depends:
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gtk.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmimeapps=false
