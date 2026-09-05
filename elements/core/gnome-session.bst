kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-session.git
  track: main
  ref: 51.rc-1-g7487b88f3b63da93714101f793643ec4cc5dcb02

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
