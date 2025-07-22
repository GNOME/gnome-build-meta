kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-session.git
  track: main
  ref: 49.alpha.1-68-gc8a6643201ab765397fc20aca232d7e83acd4d1b
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
