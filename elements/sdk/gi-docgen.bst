kind: meson

sources:
- kind: git_repo
  url: gnome:gi-docgen.git
  track: main
  ref: 2026.1-2-g7d6ad320314ec1fc5d086139b46ff616d479915c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
