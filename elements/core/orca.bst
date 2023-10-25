kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/45/orca-45.1.tar.xz
  ref: bfcc06bf4bc47bbd02c1568d1e464bf16a31e62bf703b49aa13b08db38a1a8ca
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
