kind: autotools

sources:
- kind: tar
  url: github_com:legionus/kbd/archive/v2.2.0.tar.gz

depends:
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
