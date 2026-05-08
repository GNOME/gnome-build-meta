kind: meson

sources:
- kind: git_repo
  url: freedesktop:libfprint/fprintd.git
  track: v*
  ref: v1.94.5-0-gb54a007ccf58ac0ae074c7151b223f35cbd17306

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/python-dbusmock.bst
- gnomeos-deps/pam-wrapper.bst
- sdk/gtk-doc.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/patch.bst
- freedesktop-sdk.bst:components/perl.bst # for man pages
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam-base.bst
- freedesktop-sdk.bst:components/polkit.bst
- gnomeos-deps/libfprint.bst

variables:
  meson-local: >-
    -Dpam_modules_dir='%{libdir}/security'
