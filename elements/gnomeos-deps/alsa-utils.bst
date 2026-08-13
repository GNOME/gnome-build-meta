kind: autotools

sources:
- kind: git_repo
  url: github:alsa-project/alsa-utils.git
  track: 'v*'
  ref: v1.2.16-0-g9feb22ba45b48729729c8d194aaf1bc082a6842a

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
