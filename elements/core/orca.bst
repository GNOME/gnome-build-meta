kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/43/orca-43.2.tar.xz
  ref: 744ca27169c14edf57dba3437288e41eba82a91046456224823835469c2fb9ec
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
