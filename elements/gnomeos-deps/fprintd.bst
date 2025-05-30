kind: meson

sources:
- kind: git_repo
  url: freedesktop:libfprint/fprintd.git
  track: v1.94.2
  ref: v1.94.2-0-g0d2e2a6742cbec847aa756da25afd4b73d9ec53f

build-depends:
- freedesktop-sdk.bst:components/patch.bst
- freedesktop-sdk.bst:components/perl.bst # for man pages
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- core-deps/python-dbusmock.bst
- sdk/gtk-doc.bst
- sdk/pygobject.bst
- gnomeos-deps/pam-wrapper.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam-base.bst
- freedesktop-sdk.bst:components/polkit.bst
- gnomeos-deps/libfprint.bst

variables:
  meson-local: >-
    -Dpam_modules_dir='%{libdir}/security'
