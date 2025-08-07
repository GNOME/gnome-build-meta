kind: autotools

sources:
- kind: tar
  url: github_files:brailcom/speechd/releases/download/0.12.1/speech-dispatcher-0.12.1.tar.gz
  ref: b14a5238d287d2dcce4dd42bbd66ca65fa228e7e683708267f7b34036f7ba4b4

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/dotconf.bst
- core-deps/espeak-ng.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/sndfile.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --with-espeak-ng
    --with-pulse
    --with-oss=no

config:
  install-commands:
    (>):
    - rm '%{install-root}%{infodir}/dir'
