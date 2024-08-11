kind: autotools
sources:
- kind: tar
  url: github_files:jstedfast/gmime/releases/download/3.2.15/gmime-3.2.15.tar.xz
  ref: 84cd2a481a27970ec39b5c95f72db026722904a2ccf3fdbd57b280cf2d02b5c4
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  # configure script struggles with checking for largefile.
  # So we disable it for now.
  conf-local: >-
    --disable-largefile
