kind: cmake

sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/portaudio/pa_stable_v190600_20161030.tgz

  ref: f5a21d7dcd6ee84397446fa1fa1a0675bb2e8a4a6dceb4305a8404698d8d1513
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
