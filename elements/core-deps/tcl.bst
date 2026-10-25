kind: autotools

sources:
- kind: anitya
  project-id: 4941
  url: sourceforge:tcl/tcl{version}-src.tar.gz
  ref:
    version: 9.1.0
    sha256sum: 536c45543f64d6eb11832d97ba3494aacff046fbc5040273bd55258d0e448ff1
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-cmd: ./unix/configure
  arch-conf: '--enable-64bit'
  conf-local: >-
    --disable-rpath
    --disable-zipfs
    %{arch-conf}

config:
  install-commands:
    (>):
    - sed -i "s|%{build-root}|%{includedir}/tcl-private|" %{install-root}%{libdir}/tclConfig.sh
    - mkdir -p "%{install-root}%{includedir}/tcl-private/doc/"
    - cp "%{build-root}/doc/man.macros" "%{install-root}%{includedir}/tcl-private/doc/"

    # The below file overlaps with a man page from perl.
    - rm "%{install-root}%{mandir}/man3/Thread.3"

    - ln -rs "%{install-root}%{bindir}/tclsh"* "%{install-root}%{bindir}/tclsh"
