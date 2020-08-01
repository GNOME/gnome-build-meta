kind: meson

(@): elements/core/sysprof.inc

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libdazzle.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    # This might overlap with sysprof-minimal as due to some pkgcofnig/meson
    # quirkyness sysprof-capture ends up in Requires.private and now
    # is a runtime dependency of glib so other modules can find the .pc file
    # even though its a statically build build depency
    # see: sdk/glib.bst
    overlap-whitelist:
    - '%{includedir}/sysprof-4/*.h'
    - '%{libdir}/libsysprof-capture-4.a'
    - '%{libdir}/pkgconfig/sysprof-capture-4.pc'