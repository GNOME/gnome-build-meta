kind: meson

sources:
- kind: git_repo
  url: gnome:gi-docgen.git
  track: main
  ref: 2023.3-23-gb48c2ee7e886f4c8659571f8561e8270d5d5ef88

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
