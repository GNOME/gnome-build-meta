kind: meson
sources:
- kind: tar
  url: gnome_downloads:vte/0.62/vte-0.62.2.tar.xz
  ref: b0300bbcf0c02df5812a10a3cb8e4fff723bab92c08c97a0a90c167cf543aff0
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/boost.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/fribidi.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/pcre2.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libvte-2.91.so'
