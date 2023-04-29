kind: meson

sources:
- kind: git_tag
  url: gnome:gi-docgen.git
  track: main
  ref: 2023.1-18-g719480d3e21e0fe9c83be413fceb5133bc5be91c

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-tomli.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
