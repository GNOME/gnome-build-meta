kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2021/gi-docgen-2021.7.tar.xz
  ref: e1264fa7851bee438716a2806ab137fdd21eb4d95ada46aa25c42a14f6a42bad
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-toml.bst
- sdk-deps/python-typogrify.bst
