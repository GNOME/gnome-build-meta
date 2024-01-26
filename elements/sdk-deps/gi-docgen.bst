kind: meson

sources:
- kind: git_repo
  url: gnome:gi-docgen.git
  track: main
  ref: 2023.3-34-gb863a7d5c9cce405af357b05567719deb94c8c2e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
