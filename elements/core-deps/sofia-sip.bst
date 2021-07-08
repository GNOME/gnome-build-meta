kind: autotools

sources:
- kind: tar
  url: github_com:freeswitch/sofia-sip/archive/refs/tags/v1.13.4.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
