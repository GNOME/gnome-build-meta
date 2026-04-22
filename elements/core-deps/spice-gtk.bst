kind: meson

sources:
- kind: git_repo
  url: freedesktop:spice/spice-gtk.git
  track: "v*"
  ref: v0.42-0-gf04479c16f0969fb394ebe74b6eff74e560a42f0
- kind: git_module
  url: gitlab:keycodemap/keycodemapdb.git
  path: subprojects/keycodemapdb
  ref: 14cdba29ecd7448310fe4ff890e67830b1a40f64
- kind: git_module
  url: freedesktop:spice/spice-common.git
  path: subprojects/spice-common
  ref: 58d375e5eadc6fb9e587e99fd81adcb95d01e8d6
- kind: git_module
  url: github:c3d/recorder.git
  directory: subprojects/spice-common
  path: common/recorder
  ref: d5cbf6caba60d580401c72d0cd18c316cf1be211
- kind: git_module
  url: github:c3d/make-it-quick.git
  directory: subprojects/spice-common/common/recorder
  path: make-it-quick
  ref: 7a3a86be7c3fa184bcda6882173bd8ab776ad662

build-depends:
- core-deps/python-pyparsing.bst
- core-deps/python3-six.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- core-deps/usbredir.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/libcap-ng.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dsmartcard=disabled
