kind: cmake
sources:
- kind: tar
  url: http://files.portaudio.com/archives/pa_stable_v190700_20210406.tgz
  ref: 47efbf42c77c19a05d22e627d42873e991ec0c1357219c0d74ce6a2948cb2def
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
