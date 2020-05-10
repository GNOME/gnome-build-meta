kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
config:
  options:
    target_arch: '%{arch}'
  replacements:
    components/glib.bst: sdk/glib.bst
    components/gobject-introspection.bst: sdk/gobject-introspection.bst
    components/libsoup.bst: sdk/libsoup.bst
