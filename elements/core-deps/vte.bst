kind: meson
sources:
- kind: tar
  url: gnome_downloads:vte/0.60/vte-0.60.0.tar.xz
  ref: 72d1955eb40b4475b858892813a79545cee34409bac2af470606fb4b4d193a1b
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
