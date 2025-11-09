# From freedesktop-sdk but with modemmanager enabled
kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/avahi.bst

- freedesktop-sdk.bst:components/json-glib.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libsoup.bst
- freedesktop-sdk.bst:components/avahi-gobject.bst
- freedesktop-sdk.bst:components/avahi-libs.bst

- core-deps/ModemManager.bst

variables:
  meson-local: >-
    -D3g-source=true
    -Dcdma-source=true
    -Dmodem-gps-source=true
    -Ddemo-agent=false
  project_licensedir: "%{licensedir}/freedesktop-sdk"

config:
  install-commands:
    (>):
    - |
      rm -r "%{install-root}%{libexecdir}/geoclue-2.0/demos"
      rm "%{install-root}%{datadir}/applications/geoclue-where-am-i.desktop"

    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/geoclue.conf"

public:
  cpe:
    product: geoclue
  bst:
    split-rules:
      libgeoclue:
      - '%{includedir}'
      - '%{includedir}/**'
      - '%{libdir}/libgeoclue*.so*'
      - '%{debugdir}/dwz'
      - '%{debugdir}/dwz/**'
      - '%{debugdir}/source'
      - '%{debugdir}/source/**'
      - '%{debugdir}%{libdir}'
      - '%{debugdir}%{libdir}/**'
      - '%{libdir}/pkgconfig/libgeoclue*.pc'
      - '%{libdir}/girepository-*'
      - '%{libdir}/girepository-*/**'
      - '%{datadir}/gir-*'
      - '%{datadir}/gir-*/**'
      - '%{datadir}/gtk-doc/html/libgeoclue'
      - '%{datadir}/gtk-doc/html/libgeoclue/**'
      - '%{datadir}/vala'
      - '%{datadir}/vala/**'
      geoclue-license:
      - "%{project_licensedir}"
      - "%{project_licensedir}/**"

sources:
- kind: git_repo
  url: freedesktop:geoclue/geoclue.git
  track: '*.*.*'
  ref: 2.8.0-0-gf59a42a9fbbcfcb341708e5efd6edfe72a9da768
- kind: local
  path: files/geoclue/sysusers.conf
