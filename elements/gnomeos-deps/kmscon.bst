kind: meson

sources:
- kind: git_repo
  url: github:kmscon/kmscon.git
  track: 'v*'
  ref: v9.3.3-0-g03e50c7db0489daaa41b5f62946fd6aaeab63a6e
- kind: local
  path: files/kmscon/91-kmscon.preset
- kind: local
  path: files/kmscon/gdm-kmscon.conf
- kind: local
  path: files/kmscon/kmscon.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- core-deps/libcheck.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/systemd.bst
- gnomeos-deps/libtsm.bst
- sdk/pango.bst

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system-preset" 91-kmscon.preset

    - |
      install -Dm644 gdm-kmscon.conf "%{install-root}%{indep-libdir}/systemd/system/gdm.service.d/kmscon.conf"

    - |
      install -Dm644 -t "%{install-root}%{sysconfdir}/kmscon" kmscon.conf
