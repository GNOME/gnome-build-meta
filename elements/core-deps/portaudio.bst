kind: cmake
# FIXME: Rehost elsewhere to use https
sources:
- kind: tar
  url: http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
  ref: f5a21d7dcd6ee84397446fa1fa1a0675bb2e8a4a6dceb4305a8404698d8d1513
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
