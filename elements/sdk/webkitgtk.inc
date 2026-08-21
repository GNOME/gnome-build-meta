sources:
- kind: tar
  url: webkitgtk:webkitgtk-2.53.91.tar.xz
  ref: aeb40f03d4cbce9eac39a27da15261ac9ed889e10799d0a246f7788299483f3c

build-depends:
- (@): include/clang-for-recc.yml
- buildsystems/cmake.bst
- sdk-deps/unifdef.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/ruby.bst

runtime-depends:
- freedesktop-sdk.bst:components/gstreamer-libav.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst

depends:
- sdk/at-spi2-core.bst
- sdk/enchant-2.bst
- sdk/libmanette-0.2.bst
- sdk/libsecret.bst
- sdk/pango.bst
- sdk/woff2.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/bubblewrap.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/hyphen.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libavif.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libevent.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/libtasn1.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xdg-dbus-proxy.bst
- freedesktop-sdk.bst:components/xorg-lib-xt.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  optimize-debug: 'false'
  (?):
  - arch == "aarch64":
      local_flags: >-
        -mbranch-protection=pac-ret

public:
  cpe:
    product: webkitgtk+

# Clang is strongly recommended:
environment:
  CC: clang
  CXX: clang++
