kind: autotools

sources:
- kind: tar
  url: sourceforge:tcl/tcl9.0.1-src.tar.gz
  ref: a72b1607d7a399c75148c80fcdead88ed3371a29884181f200f2200cdee33bbc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

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
    - sed -i "s|%{build-root}|%{includedir}/tcl-private|"
      %{install-root}%{libdir}/tclConfig.sh
    - mkdir -p "%{install-root}%{includedir}/tcl-private/doc/"
    - cp "%{build-root}/doc/man.macros"
      "%{install-root}%{includedir}/tcl-private/doc/"

    # The below file overlaps with a man page from perl.
    - rm "%{install-root}%{mandir}/man3/Thread.3"

    - ln -rs "%{install-root}%{bindir}/tclsh"*
      "%{install-root}%{bindir}/tclsh"
