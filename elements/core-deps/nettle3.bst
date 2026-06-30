kind: autotools
description: |
  Nettle - a low-level cryptographic library

  This is version 3.x, which we keep around because Epiphany doesn't yet build
  against 4.0.

  See: https://gitlab.gnome.org/GNOME/epiphany/-/work_items/2892

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gmp.bst

variables:
  # Work around race condition in makefiles. The following error
  # message sometimes happen:
  # /bin/sh: line 1: ./desdata: Text file busy
  notparallel: true

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnettle.so'
        - '%{libdir}/libhogweed.so'

sources:
- kind: git_repo
  url: nettle:nettle.git
  track: nettle_3.*
  exclude:
  - nettle_*rc*
  ref:
    nettle_3.10.2_release_20250626-0-gd9e983c664772f8cbacba9fa084bc079978e3c98
