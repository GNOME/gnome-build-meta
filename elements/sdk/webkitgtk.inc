sources:
- kind: tar
  url: webkitgtk:webkitgtk-2.38.5.tar.xz
  ref: 40c20c43022274df5893f22b1054fa894c3eea057389bb08aee08c5b0bb0c1a7

build-depends:
- sdk-deps/bubblewrap.bst
- sdk-deps/gi-docgen.bst
- sdk-deps/xdg-dbus-proxy.bst
- sdk/gobject-introspection.bst
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
- sdk/gst-plugins-base.bst
- sdk/libmanette.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libwpe.bst
- sdk/pango.bst
- sdk/woff2.bst
- sdk/wpebackend-fdo.bst
- freedesktop-sdk.bst:components/brotli.bst
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
