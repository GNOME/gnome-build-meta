kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-session/51/gnome-session-51.rc.tar.xz
  ref: 0cee026698e6af79b41c6ed32a9fdccbf2f67e92b157b17a046ec5a643f112e5
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
