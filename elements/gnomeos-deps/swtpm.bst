kind: autotools

sources:
- kind: git_repo
  url: github:stefanberger/swtpm.git
  track: 'v*'
  ref: v0.10.1-0-g53841482b0a9a1dfe63a120b00283acfe588ee72

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
