kind: manual
sources:
- kind: zip
  url: http://www.argyllcms.com/Argyll_V2.0.0_src.zip
- kind: patch
  path: files/argyll/fix-aarch64-build.patch
depends:
- filename: core-deps/ftjam.bst
  type: build
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xdmcp.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xrandr.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xinerama.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xscrnsaver.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xxf86vm.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
config:
  build-commands:
  - jam -q -fJambase -j${JOBS}
  install-commands:
  - jam -q -fJambase -j${JOBS} DESTDIR=%{install-root} PREFIX=%{prefix} install
environment:
  JOBS: '%{max-jobs}'
environment-nocache:
- JOBS
