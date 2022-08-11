kind: autotools

sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20220725/mobile-broadband-provider-info-20220725.tar.xz
  ref: 4845ae01c287f2dfb022bc62d59a148873ffc4a673f51020562657426d632acd
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
