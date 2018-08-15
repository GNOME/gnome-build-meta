config:
  build-commands:
  - jam -q -fJambase -j%{max-jobs}
  install-commands:
  - jam -q -fJambase -j%{max-jobs} DESTDIR=%{install-root} PREFIX=%{prefix} install
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
kind: manual
sources:
- kind: zip
  ref: 5492896c040b406892864c467466ad6b50eb62954b5874ef0eb9174d1764ff41
  url: http://www.argyllcms.com/Argyll_V2.0.0_src.zip
- kind: patch
  path: files/argyll/fix-aarch64-build.patch
