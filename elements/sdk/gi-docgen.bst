kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2025/gi-docgen-2025.5.tar.xz
  ref: 2579a33ff87b622d10d102c91b7d0ece506340b70e34dbb6522163e16c90aca3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
