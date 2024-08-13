kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2024/gi-docgen-2024.1.tar.xz
  ref: 870c77f9620462cce49e35542a42dc1612fc858733e83dbbe248c535458aec1e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
