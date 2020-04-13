kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.28.1.tar.xz
  ref: acbc26a3ed5c13f39e46875cf447a9c0541b6cfb17f9e7884323431cb327f3d8
- kind: patch
  path: files/webkitgtk/gtk-doc-introspection-cross-compiling.patch
- kind: local
  path: files/webkitgtk/toolchain.i686
- kind: local
  path: files/webkitgtk/toolchain.arm
depends:
- sdk/at-spi2-core.bst
- sdk/brotli.bst
- sdk/enchant-2.bst
- sdk/geoclue.bst
- sdk/gobject-introspection.bst
- filename: sdk/gst-libav.bst
  type: runtime
- filename: sdk/gst-plugins-bad.bst
  type: runtime
- sdk/gst-plugins-base.bst
- filename: sdk/gst-plugins-good.bst
  type: runtime
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/libwpe.bst
- sdk/openjpeg.bst
- sdk/pango.bst
- sdk/woff2.bst
- sdk/wpebackend-fdo.bst
- filename: components/hyphen.bst
  junction: freedesktop-sdk.bst
- filename: components/libtasn1.bst
  junction: freedesktop-sdk.bst
- filename: components/libwebp.bst
  junction: freedesktop-sdk.bst
- filename: components/libxslt.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xt.bst
  junction: freedesktop-sdk.bst
- filename: components/gperf.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/ruby.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  webkitgtk_toolchain: ''
  (?):
  - arch == "i686" or arch == "arm":
      webkitgtk_toolchain: -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=toolchain.%{arch}
  cmake-local: -DPORT=GTK -DENABLE_BUBBLEWRAP_SANDBOX=OFF %{webkitgtk_toolchain}
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
  cpe:
    product: webkitgtk+
