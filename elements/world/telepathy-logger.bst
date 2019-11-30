kind: autotools
sources:
- kind: git_tag
  url: github_com:TelepathyIM/telepathy-logger.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst
- sdk/gtk-doc.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- world/telepathy-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
