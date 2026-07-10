kind: meson

sources:
- kind: git_repo
  url: gnome:gi-docgen.git
  track: main
  ref: 2026.1-27-gb27747121ae6045a6e0dfce5e268a65b642361cd

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
