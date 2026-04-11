kind: meson
sources:
- kind: git_repo
  url: freedesktop:spice/spice.git
  track: "v*.*.*"
  exclude:
  # .90 and after are unstable versions
  - "*.*.9[0-9]*"
  ref: v0.16.0-0-gb0374ff7da557c509d777283a2779190389536f8
- kind: git_module
  url: freedesktop:spice/spice-common.git
  path: subprojects/spice-common
  ref: 492c22f4447eec9d430a7c737bdd20cbe93263c4
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
- core-deps/spice-protocol.bst
- freedesktop-sdk.bst:components/sed.bst

# public-stacks/buildsystem-meson.bst depends on git-minimal
# but spice has a script, build-aux/meson/check-spice-common
# that runs git ls-files on submodules and thus we need git.bst
# which can't overlap with git-minimal. Copy over the deps from
# buildsystem-meson and repalce git-minimal.
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/stripper.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/meson.bst
- freedesktop-sdk.bst:components/ninja.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/git.bst
depends:
- core-deps/libcacard.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/opus.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    -Dgstreamer=1.0
