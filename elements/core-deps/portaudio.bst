kind: cmake

sources:
- kind: tar
  url: github_com:PortAudio/portaudio/archive/refs/tags/v19.7.0.tar.gz

  ref: 5af29ba58bbdbb7bbcefaaecc77ec8fc413f0db6f4c4e286c40c3e1b83174fa0
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
