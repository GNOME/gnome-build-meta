kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2026/gi-docgen-2026.1.tar.xz
  ref: c316d6c04699976b6823912aae1fb2a6a3ffa2553b422be88fb56eb881acf479
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-typogrify.bst
