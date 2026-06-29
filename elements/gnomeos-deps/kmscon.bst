kind: meson

sources:
- kind: git_repo
  url: github:kmscon/kmscon.git
  track: 'v*'
  ref: v10.0.0-0-gb54cf7512abcb7c8f015c762cd6361cca51b7b77
- kind: local
  path: files/kmscon/80-kmscon.preset
- kind: local
  path: files/kmscon/gdm-kmscon.conf
- kind: local
  path: files/kmscon/kmscon.conf

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- core-deps/libcheck.bst

depends:
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libseat.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libtsm.bst
- sdk/pango.bst

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system-preset" 80-kmscon.preset

    - |
      install -Dm644 gdm-kmscon.conf "%{install-root}%{indep-libdir}/systemd/system/gdm.service.d/kmscon.conf"

    - |
      install -Dm644 -t "%{install-root}%{sysconfdir}/kmscon" kmscon.conf
