kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.29.1.tar.xz
- kind: patch
  path: files/webkitgtk/webkit-bug-212043.patch
- kind: patch
  path: files/webkitgtk/gtk-doc-introspection-cross-compiling.patch
- kind: local
  path: files/webkitgtk/toolchain.i686
- kind: local
  path: files/webkitgtk/toolchain.arm
build-depends:
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/ruby.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
runtime-depends:
- sdk/gst-libav.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-good.bst
depends:
- sdk/at-spi2-core.bst
- sdk/enchant-2.bst
- sdk/geoclue.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/libwpe.bst
- sdk/pango.bst
- sdk/woff2.bst
- sdk/wpebackend-fdo.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/hyphen.bst
- freedesktop-sdk.bst:components/libtasn1.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xt.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  webkitgtk_toolchain: ''
  webkitgtk_arch_options: ''
  (?):
  - arch == "i686" or arch == "arm":
      webkitgtk_toolchain: -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=toolchain.%{arch}
  - arch == "arm":
      webkitgtk_arch_options: >-
        -DENABLE_GLES2=ON
  cmake-local: >-
    -DPORT=GTK
    -DENABLE_BUBBLEWRAP_SANDBOX=OFF
    %{webkitgtk_toolchain}
    %{webkitgtk_arch_options}
(?):
- arch == "i686":
    environment:
      CFLAGS: '%{flags_i686} -g1'
      CXXFLAGS: '%{flags_i686} -g1'
- arch == "arm":
    environment:
      CFLAGS: '%{flags_arm} -g1'
      CXXFLAGS: '%{flags_arm} -g1'
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-4.0.so'
        - '%{libdir}/libwebkit2gtk-4.0.so'
  cpe:
    product: webkitgtk+
