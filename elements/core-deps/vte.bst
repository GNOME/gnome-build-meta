kind: meson
sources:
- kind: tar
  url: gnome_downloads:vte/0.59/vte-0.59.92.tar.xz
  ref: c2f12833f3c08ae703c17519ac5aa5daae49767dae353ed079b9650603d8522f
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
(?):
- arch == "x86_64":
    environment:
      CXXFLAGS: '%{flags_x86_64} -fno-exceptions'
- arch == "i686":
    environment:
      CXXFLAGS: '%{flags_i686} -fno-exceptions'
- arch == "arm":
    environment:
      CXXFLAGS: '%{flags_arm} -fno-exceptions'
- arch == "aarch64":
    environment:
      CXXFLAGS: '%{flags_aarch64} -fno-exceptions'
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libvte-2.91.so'
