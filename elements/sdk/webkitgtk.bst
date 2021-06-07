sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.33.1.tar.xz
- kind: local
  path: files/webkitgtk/toolchain.i686
- kind: local
  path: files/webkitgtk/toolchain.arm
- kind: patch
  path: files/webkitgtk/fix-build.patch
- kind: patch
  path: files/webkitgtk/fix-crashes.patch

build-depends:
- sdk-deps/bubblewrap.bst
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
- sdk/gtk+-3.bst
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
  webkitgtk_toolchain: ''
  webkitgtk_arch_options: ''
  (?):
  - arch == "i686" or arch == "arm":
      webkitgtk_toolchain: -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=toolchain.%{arch}
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
