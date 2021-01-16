kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.38/pyatspi-2.38.0.tar.xz
  ref: ff809312fd0c2f61e191c181a1a638a30b579b91b682cfb5a05535a55265b43d
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --with-python=python3
