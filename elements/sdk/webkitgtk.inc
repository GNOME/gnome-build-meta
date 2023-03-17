sources:
- kind: tar
  url: webkitgtk:webkitgtk-2.40.0.tar.xz
  ref: a4607ea1bf89669e89b1cb2c63faaec513f93de09b6ae60cc71d6a8aab7ab393
- kind: patch
  path: files/webkitgtk/unbreak-script-message-received.patch

build-depends:
- sdk-deps/bubblewrap.bst
- sdk-deps/gi-docgen.bst
- sdk-deps/unifdef.bst
- sdk-deps/xdg-dbus-proxy.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/gperf.bst
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
