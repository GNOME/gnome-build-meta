kind: meson

sources:
- kind: git_repo
  url: gnome:gtk-doc.git
  track: master
  ref: 1.37.0-4-g67bf943c228cbc46ded9247c0e0246f04a1b7060

build-depends:
- buildsystems/meson.bst
- (@): include/gcc-for-recc.yml
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/sed.bst

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
