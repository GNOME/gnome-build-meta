kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2023/gi-docgen-2023.3.tar.xz
  ref: 4deb1f09773f706259ac652050da7b3ee59871bc3fd5cfb77e811db7498dc8e7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
