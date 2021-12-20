kind: cmake

sources:
- kind: tar
  url: github_com:PortAudio/portaudio/archive/refs/tags/v19.7.0.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
    (>):
    - install -d '%{install-root}%{libdir}'
    - mv '%{install-root}%{indep-libdir}/pkgconfig' '%{install-root}%{libdir}/'
    - mv '%{install-root}%{indep-libdir}'/lib*.so* '%{install-root}%{libdir}/'
