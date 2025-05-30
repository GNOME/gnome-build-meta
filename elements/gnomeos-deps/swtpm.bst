kind: autotools

sources:
- kind: tar
  url: github_files:stefanberger/swtpm/archive/refs/tags/v0.8.0.tar.gz
  ref: ad433f9272fb794aafd550914d24cc0ca33d4652cfd087fa41b911fa9e54be3d

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
