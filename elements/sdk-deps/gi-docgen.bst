kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2021/gi-docgen-2021.8.tar.xz
  ref: 5bcda2cec5986f2c8efb2fab4555ca8a5c35f0002ba34442e7d602bee09dd457
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-toml.bst
- sdk-deps/python-typogrify.bst
