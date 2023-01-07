kind: meson

sources:
- kind: git_tag
  url: gnome:gi-docgen.git
  track: main
  ref: 2023.1-1-geeaa48aba2bba081ec468772b020e024ccfdfd5c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-tomli.bst
- sdk-deps/python-typogrify.bst
