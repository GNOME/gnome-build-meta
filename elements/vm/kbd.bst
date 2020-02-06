kind: autotools

sources:
- kind: tar
  url: github_com:legionus/kbd/archive/v2.2.0.tar.gz

  ref: 5dec023c7a05b4d11d8ae795f59fab2b0bacfcc5c20a3d534dc7566cfe47ccf7
depends:
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
