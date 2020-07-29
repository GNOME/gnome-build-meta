kind: cmake

sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/portaudio/pa_stable_v190600_20161030.tgz

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
