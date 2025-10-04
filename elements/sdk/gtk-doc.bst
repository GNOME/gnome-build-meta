kind: meson

sources:
- kind: git_repo
  url: gnome:gtk-doc.git
  track: master
  ref: 1.35.1-0-g82623a6c120e153be9bee8642693a00bc1aae77f

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
