kind: meson

sources:
- kind: git_tag
  url: gnome:gi-docgen.git
  track: main
  ref: 2023.1-22-gdc1ea60f624c97cccaaae458a1a2cbbead58b9fb

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
