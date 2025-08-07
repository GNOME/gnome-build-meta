kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2025/gi-docgen-2025.4.tar.xz
  ref: 66c865d459febdfb5e4078a88df06183620c3e91f726d1dc608d88ee3605526e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
