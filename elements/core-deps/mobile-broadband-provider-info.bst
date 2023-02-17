kind: autotools

sources:
- kind: git_tag
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20221107-9-gf449f6f333974fe8bff6f1190954f164a6c9da5c

build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
