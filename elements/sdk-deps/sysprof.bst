kind: meson

(@): elements/core/sysprof.inc

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- sdk-deps/libpanel.bst
- sdk/gtk.bst
- sdk/json-glib.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:components/libunwind.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgtk=true
    -Dsysprofd=bundled
    -Dlibsysprof=true
    -Dtools=true
    -Dtests=true
    -Dexamples=true

public:
  bst:
    # This might overlap with sysprof-minimal as due to some pkgcofnig/meson
    # quirkyness sysprof-capture ends up in Requires.private and now
    # is a runtime dependency of glib so other modules can find the .pc file
    # even though its a statically build dependency
    # see: sdk/glib.bst
    overlap-whitelist:
    - '%{includedir}/sysprof-6/*.h'
    - '%{libdir}/libsysprof-capture-4.a'
    - '%{libdir}/pkgconfig/sysprof-capture-4.pc'
    split-rules:
      sysprof-agent:
      - '%{bindir}/sysprof-agent'
      - '%{debugdir}%{bindir}/sysprof-agent.debug'
      - '%{debugdir}%{libdir}/libsysprof-memory-6.so.debug'
      - '%{debugdir}%{libdir}/libsysprof-speedtrack-6.so.debug'
      - '%{debugdir}%{libdir}/libsysprof-tracer-6.so.debug'
      # libsyspof which sysprof-agent statically links, expects to be
      # able to LD_PRELOAD the following, so it can get better traces
      # See #769
      - '%{libdir}/libsysprof-memory-6.so'
      - '%{libdir}/libsysprof-speedtrack-6.so'
      - '%{libdir}/libsysprof-tracer-6.so'
