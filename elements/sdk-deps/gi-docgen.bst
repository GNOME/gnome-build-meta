kind: meson

sources:
- kind: git_tag
  url: gnome:gi-docgen.git
  track: main
  ref: 2022.2-3-g9523a7cf49b69bdf5be1e00844fc482416bed100

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-toml.bst
- sdk-deps/python-typogrify.bst
