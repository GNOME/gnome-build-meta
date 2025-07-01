kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-session/49/gnome-session-49.alpha.1.tar.xz
  ref: c42b86661e6783614ab69a571d640eb42044792ffea3d57349fe72f0881c5d39
- kind: patch
  path: patches/gnome-session/0001-doc-skip-validation-of-xml.patch

build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/xmlto.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
