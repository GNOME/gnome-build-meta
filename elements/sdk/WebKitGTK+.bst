kind: cmake
sources:
# WARNING: soup-session-test.patch and i686-build.patch
# should both be removed when upgrading to 2.23.2!
- kind: tar
  url: webkitgtk_org:webkitgtk-2.23.1.tar.xz
- kind: patch
  path: files/webkitgtk/soup-session-test.patch
- kind: patch
  path: files/webkitgtk/i686-build.patch
- kind: patch
  path: files/webkitgtk/gtk-doc-introspection-cross-compiling.patch
depends:
- sdk/at-spi2-core.bst
- sdk/brotli.bst
- sdk/enchant-2.bst
- sdk/geoclue.bst
- sdk/gobject-introspection.bst
- sdk/gst-libav.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/pango.bst
- sdk/woff2.bst
- filename: desktop/hyphen.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xt.bst
  junction: freedesktop-sdk.bst
- filename: base/gperf.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/python2.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/ruby.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  webkitgtk-extra: ''
  (?):
  - arch == "i686":
      webkitgtk-extra: -DCMAKE_BUILD_TYPE=Release
  cmake-local:
    -DPORT=GTK
    -DENABLE_PLUGIN_PROCESS_GTK2=OFF
    -DENABLE_BUBBLEWRAP_SANDBOX=OFF
    %{webkitgtk-extra}
(?):
- arch == "i686":
    environment:
      CFLAGS: '-g1'
      CXXFLAGS: '-g1'
