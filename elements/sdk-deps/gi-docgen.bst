kind: meson

sources:
- kind: git_repo
  url: gnome:gi-docgen.git
  track: main
  ref: 2023.3-38-g83963e150abf564deff87a8af52a860b2029217c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
