kind: autotools

sources:
- kind: tar
  url: libburnia:libburn-1.5.2.pl01.tar.gz

  ref: 881903ab5c9b3314ce60029b6d709697b79d4ff5ad7efc14d06dddab054b37f7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
