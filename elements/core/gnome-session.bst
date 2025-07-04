kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-session.git
  track: main
  ref: 49.alpha.1-1-g83410ba7d3e70b02bc8461e248ff15c9fa9a93ca
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
