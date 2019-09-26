kind: cmake
# FIXME: Rehost elsewhere to use https
sources:
- kind: tar
  url: http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
