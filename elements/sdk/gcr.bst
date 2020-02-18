kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gcr/3.35/gcr-3.35.91.tar.xz
  ref: 45d3ade06245f1328e28a0c05502f92ed1fd5a56e7996e37a5641c2e1f1437fb
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgck-1.so'
        - '%{libdir}/libgcr-3.so'
        - '%{libdir}/libgcr-base-3.so'
        - '%{libdir}/libgcr-ui-3.so'
