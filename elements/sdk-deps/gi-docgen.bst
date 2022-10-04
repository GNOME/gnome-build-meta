kind: meson

sources:
- kind: git_tag
  url: gnome:gi-docgen.git
  track: main
  ref: 2022.1-46-g045701a87e40059d15017d32bbd9cea4d21ec5bf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-toml.bst
- sdk-deps/python-typogrify.bst
