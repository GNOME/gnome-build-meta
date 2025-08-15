kind: autotools

sources:
- kind: tar
  url: github_files:stefanberger/swtpm/archive/refs/tags/v0.10.1.tar.gz
  ref: f8da11cadfed27e26d26c5f58a7b8f2d14d684e691927348906b5891f525c684

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/json-glib.bst
- gnomeos-deps/libtpms.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/libtasn1.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    ac_cv_path_EXPECT=/usr/bin/false
    ac_cv_path_SOCAT=/usr/bin/false
    --disable-hardening

  local_flags: >-
    -Wno-error=maybe-uninitialized
