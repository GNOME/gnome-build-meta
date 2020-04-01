kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gcr/3.36/gcr-3.36.0.tar.xz
  ref: aaf9bed017a2263c6145c89a1a84178f9f40f238426463e4ae486694ef5f6601
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
