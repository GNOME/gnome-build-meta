kind: meson

sources:
- kind: git_repo
  url: gnome:gtk-doc.git
  track: master
  ref: 1.36.0-8-gfc5ada45157b4d33eb00235ec28e578bc1179536

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dtests=false
