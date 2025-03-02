kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2025/gi-docgen-2025.3.tar.xz
  ref: 8a89a58bc0f77dfc3e8a2a0e3497fc39f5413ae35e5597e9ec6160abf8ee14d8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
