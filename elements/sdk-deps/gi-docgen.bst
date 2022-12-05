kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2022/gi-docgen-2022.2.tar.xz
  ref: 26543910d76a79d62f66712285692a3b62a75f31d07cbbeea46eec7e34e63a54
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-toml.bst
- sdk-deps/python-typogrify.bst
