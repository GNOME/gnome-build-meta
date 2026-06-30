kind: autotools

sources:
- kind: git_repo
  url: github:alsa-project/alsa-utils.git
  track: 'v*'
  ref: v1.2.14-0-g8cbe7b8cd281118ac1a0819a6eda3fe62368a22d

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst

variables:
  conf-local: >-
    --with-udev-rules-dir='%{indep-libdir}/udev/rules.d'

config:
  install-commands:
    # We do not need alsa restore
    (>):
    - |
      rm '%{install-root}%{indep-libdir}/udev/rules.d/90-alsa-restore.rules'
