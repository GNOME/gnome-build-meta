kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtk-doc/1.34/gtk-doc-1.34.0.tar.xz
  ref: b20b72b32a80bc18c7f975c9d4c16460c2276566a0b50f87d6852dff3aa7861c
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dtests=false
