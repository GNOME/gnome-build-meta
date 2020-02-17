kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.35/pyatspi-2.35.1.tar.xz
  ref: 86e608f7a8a2f9877084ed3848700757acea660a55a219214ba0ce9f8764311a
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: --with-python=python3
