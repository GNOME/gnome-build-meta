# FIXME: when updating to WebKitGTK > 2.39.90, remove the -DDEBUG_FISSION=OFF
# flag from webkitgtk-6.0.bst and webkit2gtk-4.1.bst. No longer necessary.
# https://bugs.webkit.org/show_bug.cgi?id=252679
sources:
- kind: tar
  url: webkitgtk:webkitgtk-2.39.91.tar.xz
  ref: 92e8a6f599450529eb0bd552e4fc2d1f691831eb4d89caffb96fb581d2c836d3
- kind: patch
  path: files/webkitgtk/fix-installed-headers.patch

build-depends:
- sdk-deps/bubblewrap.bst
- sdk-deps/gi-docgen.bst
- sdk-deps/unifdef.bst
- sdk-deps/xdg-dbus-proxy.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/ruby.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

runtime-depends:
- sdk/gst-libav.bst
- sdk/gst-plugins-good.bst

depends:
- sdk/at-spi2-core.bst
- sdk/enchant-2.bst
- sdk/geoclue.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/libavif.bst
- sdk/libmanette.bst
- sdk/libsecret.bst
- sdk/libwpe.bst
- sdk/pango.bst
- sdk/woff2.bst
- sdk/wpebackend-fdo.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/hyphen.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/libtasn1.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xt.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  optimize-debug: 'false'
  (?):
  - arch == "i686" or arch == "arm":
      debug_flags: "-g1"

public:
  cpe:
    product: webkitgtk+

environment:
  CC: clang
  CXX: clang++
